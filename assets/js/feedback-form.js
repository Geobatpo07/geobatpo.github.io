---
layout: null
---
(function () {
  var FEEDBACK_EMAIL = "{{ site.author.email }}";
  var form = document.getElementById("feedback-form");
  if (!form || !FEEDBACK_EMAIL) return;

  form.addEventListener("submit", function (e) {
    e.preventDefault();

    var name = form.name.value.trim();
    var email = form.email.value.trim();
    var message = form.message.value.trim();

    var subject = "Website Feedback from " + (name || "a visitor");
    var bodyLines = [message, "", "From: " + (name || "Anonymous")];
    if (email) {
      bodyLines.push("Reply to: " + email);
    }

    var mailto = "mailto:" + FEEDBACK_EMAIL
      + "?subject=" + encodeURIComponent(subject)
      + "&body=" + encodeURIComponent(bodyLines.join("\n"));

    window.location.href = mailto;
  });
})();
