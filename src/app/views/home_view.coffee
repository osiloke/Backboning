homeTemplate = require('templates/home')

class exports.HomeView extends Backbone.View
  id: 'home-view'
  events:
    'click #but1' : 'react'
  render: ->
    $(@.el).html homeTemplate()
    @
  react: ->
    alert "clicked"
  initialize: ->
    
