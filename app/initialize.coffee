Application = require('application')

$ ->
  new Application
    path: location.hash.slice(2)
    root: $('body')
