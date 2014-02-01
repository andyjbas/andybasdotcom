class Router
  constructor: (@app) ->
    @app.on 'route', (href) -> $.route href

    $.route (path) => @app.trigger 'view:render', path.slice(2)

    if @app.config.path is ''
      @app.trigger 'route', '#/home'

module.exports = Router

