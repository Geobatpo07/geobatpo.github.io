(function () {
  var prefersReducedMotion = window.matchMedia && window.matchMedia("(prefers-reduced-motion: reduce)").matches;
  var targets = document.querySelectorAll(".reveal");

  if (!targets.length) return;

  if (prefersReducedMotion || typeof IntersectionObserver === "undefined") {
    targets.forEach(function (el) { el.classList.add("is-visible"); });
    return;
  }

  var observer = new IntersectionObserver(
    function (entries) {
      entries.forEach(function (entry) {
        if (entry.isIntersecting) {
          entry.target.classList.add("is-visible");
          observer.unobserve(entry.target);
        }
      });
    },
    { threshold: 0, rootMargin: "0px 0px -10% 0px" }
  );

  targets.forEach(function (el) { observer.observe(el); });

  /* Safety net: an element taller than the viewport (or any other edge case
     the observer doesn't handle) should never stay invisible forever. */
  window.setTimeout(function () {
    targets.forEach(function (el) { el.classList.add("is-visible"); });
  }, 4000);
})();
