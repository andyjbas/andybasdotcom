Application = require('application')

$ ->
  $(document).foundation()
  new Application
    path: location.hash.slice(2)
    root: $('body')
