class Application
  MODULES: [
    'components/router',
    'components/view_switcher',
    'components/navigation'
  ]

  constructor: (@config) ->
    @app = $.observable(@)
    @_registerModule(m) for m in @MODULES
    @app.trigger('ready')

  # private

  _registerModule: (m) ->
    m = require m
    @app.on 'ready', -> new m(@app)

module.exports = Application
