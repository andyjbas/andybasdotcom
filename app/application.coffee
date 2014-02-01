class Application
  MODULES: [
    'components/router',
    'components/navigation',
    'views/mainView'
  ]

  constructor: (@config) ->
    @app = $.observable(@)
    @_registerModule(m) for m in @MODULES
    @app.trigger 'ready'

    if @config.path is ''
      @app.trigger 'route', '#/home'

  # private

  _registerModule: (m) ->
    m = require m
    @app.on 'ready', -> new m(@app)

module.exports = Application
