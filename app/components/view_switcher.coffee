class ViewSwitcher
  constructor: (@app) ->
    $.route(@_viewSwap)

  # private

  _viewSwap: (path) ->
    el      = "##{path.slice(2)}"
    $el     = $(el)
    current = $('.is-active')

    if current
      current.removeClass 'is-active'
      current.hide()
    $el.addClass 'is-active'
    $el.show()

module.exports = ViewSwitcher
