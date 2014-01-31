exports.config =
  # See http://brunch.io/#documentation for docs.
  files:
    javascripts:
      joinTo:
        'app.js':    /^app/
        'vendor.js': /^(bower_components|vendor)/
      order:
        before: [

          'vendor/scripts/jquery-2.1.0.min.js',
          'vendor/scripts/riot-0.9.7.js',
          'bower_components/modernizr/modernizr.js',
          'vendor/scripts/foundation.min.js'
        ]
    stylesheets:
      joinTo: 'app.css': /^(app|vendor)/
    templates:
      joinTo: 'template.js'
