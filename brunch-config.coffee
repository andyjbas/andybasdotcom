exports.config =
  plugins:
    sass:
      options:
        [
          '--quiet',
          '--load-path',
          'bower_components/foundation/scss',
          '--load-path',
          'bower_components/jQuery.mmenu/src/scss'
        ]
  files:
    javascripts:
      joinTo:
        'js/app.js':    /^app/
        'js/vendor.js': /^(bower_components)/
    stylesheets:
      joinTo:
        'css/app.css': /^(bower_components|app)/
    templates:
      joinTo: 'js/template.js'
