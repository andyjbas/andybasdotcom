exports.config =
  # See http://brunch.io/#documentation for docs.
  files:
    javascripts:
      joinTo:
        'js/app.js':    /^app/
        'js/vendor.js': /^(bower_components)/
    stylesheets:
      joinTo: 'css/app.css': /^(bower_components|app)/
    templates:
      joinTo: 'js/template.js'
