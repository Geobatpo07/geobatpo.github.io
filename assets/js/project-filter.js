(function () {
  var library = document.getElementById("project-library");
  if (!library) return;

  var cards = Array.prototype.slice.call(library.querySelectorAll(".project-card"));
  var searchInput = document.getElementById("project-search");
  var countEl = document.getElementById("project-count");
  var emptyEl = document.getElementById("project-empty");
  var groups = Array.prototype.slice.call(document.querySelectorAll(".project-filters__group"));

  var state = { search: "" };
  groups.forEach(function (group) {
    state[group.getAttribute("data-filter-group")] = "all";
  });

  function applyFilters() {
    var visibleCount = 0;

    cards.forEach(function (card) {
      var matches = true;

      groups.forEach(function (group) {
        var key = group.getAttribute("data-filter-group");
        var value = state[key];
        if (value !== "all" && card.getAttribute("data-" + key) !== value) {
          matches = false;
        }
      });

      if (matches && state.search) {
        var haystack = (card.getAttribute("data-search") || "").toLowerCase();
        if (haystack.indexOf(state.search) === -1) {
          matches = false;
        }
      }

      if (matches) {
        card.hidden = false;
        visibleCount += 1;
      } else {
        card.hidden = true;
      }
    });

    if (countEl) {
      countEl.textContent = visibleCount + (visibleCount === 1 ? " project" : " projects");
    }
    if (emptyEl) {
      emptyEl.hidden = visibleCount !== 0;
    }
  }

  groups.forEach(function (group) {
    var key = group.getAttribute("data-filter-group");
    var chips = Array.prototype.slice.call(group.querySelectorAll(".filter-chip"));

    chips.forEach(function (chip) {
      chip.addEventListener("click", function () {
        chips.forEach(function (c) { c.classList.remove("is-active"); });
        chip.classList.add("is-active");
        state[key] = chip.getAttribute("data-filter-value");
        applyFilters();
      });
    });
  });

  if (searchInput) {
    searchInput.addEventListener("input", function () {
      state.search = searchInput.value.trim().toLowerCase();
      applyFilters();
    });
  }

  applyFilters();
})();
