class Router
  constructor: (@app) ->
    @app.on 'route', @_triggerRoute

    if @app.config.path is ''
      @app.trigger 'route', '#/home'

  # private

  _triggerRoute: (href) -> $.route href

module.exports = Router

