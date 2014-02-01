class MainView
  FOUNDATION_DEPENDENT: ['work']

  constructor: (@app) ->
    @app.on 'view:render', @_render

  # private

  _getTemplate: (view) ->
    require("templates/#{view}")()

  _render: (view) =>
    el      = "##{view}"
    $el     = $(el)
    current = $('.is-active')

    $el.html @_getTemplate(view)
    $el.addClass 'is-active'

    if current
      current.removeClass 'is-active'
      current.hide()

    if view in @FOUNDATION_DEPENDENT
      $el.foundation()

    $el.show()

module.exports = MainView
