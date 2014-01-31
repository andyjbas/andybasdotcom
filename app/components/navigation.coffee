class Navigation
  constructor: (@app) ->
    @menu = @app.config.root.find '#menu'
    @menu.on "click", "[href^='#/']", @_menuClick

  # private

  _menuClick: (e) =>
    link = $(e.currentTarget)
    @app.trigger 'route', link.attr 'href'
    $('.off-canvas-wrap').removeClass 'move-right'

    false

module.exports = Navigation
