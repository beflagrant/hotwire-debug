var body = document.querySelector("body")

var turboEvents = [
  "turbo:before-cache",
  "turbo:before-render",
  "turbo:before-visit",
  "turbo:click",
  "turbo:load",
  "turbo:load",
  "turbo:render",
  "turbo:submit-end",
  "turbo:submit-start",
]

turboEvents.forEach(function(turboEvent) {
  document.addEventListener(turboEvent, function() {
    if (showEvents()) {
      console.log(turboEvent);
    }
    if (showFrameChanges()) {
      handleChange();
    }
  });
})

function showEvents () {
  return document.body.hasAttribute('data-hotwire-debug')
}

function showFrameChanges () {
  return document.body.hasAttribute('data-hotwire-debug')
}

function handleChange() {
  document.querySelectorAll('turbo-frame > div, turbo-frame > form').forEach(function(target) { target.setAttribute('data-turbo-frame-id',target.closest('turbo-frame').id) });
}

// This needs to happen more than just on load.
window.onload = function() {
  let hotwireToggle = document.getElementById('hotwire-toggle');
  if (hotwireToggle == null) {
    hotwireToggle = document.createElement("div");
    hotwireToggle.innerHTML = '<svg viewBox="0 0 196 196" xmlns="http://www.w3.org/2000/svg"> <style> path { fill: #000000; } @media (prefers-color-scheme: dark) { path { fill: #ffffff; } } </style> <path d="m16.38 184.8 109.46-44.72-35.27-3.31 76.73-66.59-44.33-4.16 53.9-55.53-136.52 70.03 54.89 6.44-67.32 54.38 30.07 2.97z"/> </svg>';
    hotwireToggle.id = "hotwire-toggle";

    document.body.append(hotwireToggle);
    hotwireToggle.addEventListener("click", function() {
      document.body.toggleAttribute("data-hotwire-debug");
    });
  }
}