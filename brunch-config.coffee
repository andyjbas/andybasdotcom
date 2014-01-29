exports.config =
  # See http://brunch.io/#documentation for docs.
  files:
    javascripts:
      joinTo:
        'app.js':    /^app/
        'vendor.js': /^vendor/
    stylesheets:
      joinTo: 'app.css'
    templates:
      joinTo: 'template.js'
