#!/usr/bin/env node
// Generates files/Profile.pdf from the dedicated /resume-print/ page (not
// the website's /cv/ page — see _pages/resume-print.md / _layouts/resume-print.html).
//
// This is the CI-time equivalent of an on-demand PDF route: GitHub Pages
// has no server to render a PDF per request, so instead the PDF is
// regenerated fresh from resume.yml -> Resume Engine -> the dedicated
// print template on every deploy. See .github/workflows/jekyll.yml.
//
// Usage: node scripts/generate-cv-pdf.mjs [siteDir] [port]
//   siteDir defaults to ./_site (the Jekyll build output)
//   port defaults to 4173

import { chromium } from 'playwright';
import { createServer } from 'http-server';
import { existsSync } from 'node:fs';
import { mkdir } from 'node:fs/promises';
import path from 'node:path';

const siteDir = path.resolve(process.argv[2] || '_site');
const port = Number(process.argv[3] || 4173);
const outputPath = path.join(siteDir, 'files', 'Profile.pdf');

if (!existsSync(siteDir)) {
  console.error(`Site directory not found: ${siteDir}. Run "bundle exec jekyll build" first.`);
  process.exit(1);
}

const server = createServer({ root: siteDir });

async function main() {
  await new Promise((resolve) => server.listen(port, resolve));
  console.log(`Serving ${siteDir} at http://localhost:${port}`);

  const browser = await chromium.launch();
  try {
    const page = await browser.newPage();
    await page.goto(`http://localhost:${port}/resume-print/`, { waitUntil: 'networkidle' });

    await mkdir(path.dirname(outputPath), { recursive: true });
    await page.pdf({
      path: outputPath,
      format: 'A4',
      printBackground: true,
      // Margins are defined once, in assets/css/resume.scss's @page rule —
      // preferCSSPageSize lets that be the single source of truth instead
      // of stacking a second margin here.
      preferCSSPageSize: true
    });

    console.log(`Generated ${outputPath}`);
  } finally {
    await browser.close();
    server.close();
  }
}

main().catch((err) => {
  console.error(err);
  server.close();
  process.exit(1);
});
