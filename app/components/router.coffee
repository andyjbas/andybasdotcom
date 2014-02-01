class Router
  constructor: (@app) ->
    @app.on 'route', (href) -> $.route href

    $.route (path) => @app.trigger 'view:render', path.slice(2)

module.exports = Router

