class Navigation
  constructor: (@app) ->
    @menu = @app.config.root.find '#menu'
    @menu.on "click", "[href^='#/']", @_menuClick

    @menu.mmenu
      classes: 'mm-foundation'

  # private

  _menuClick: (e) =>
    link = $(e.currentTarget)
    @app.trigger 'route', link.attr 'href'
    @menu.trigger 'close.mm'

    false

module.exports = Navigation
