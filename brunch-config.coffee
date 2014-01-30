exports.config =
  # See http://brunch.io/#documentation for docs.
  files:
    javascripts:
      joinTo:
        'app.js':    /^app/
        'vendor.js': /^vendor/
      order:
        before: [
          'vendor/scripts/jquery-2.1.0.min.js',
          'vendor/scripts/riot-0.9.7.js',
          'vendor/scripts/modernizr.js',
          'vendor/scripts/foundation.min.js'
        ]
    stylesheets:
      joinTo: 'app.css': /^(app|vendor)/
    templates:
      joinTo: 'template.js'
