bookTemplate = require('templates/book')
class exports.BookView extends Backbone.View
  tagName : 'tr'
  events  :
    'click input[type="checkbox"]' : 'toggleSelect'
  initialize: ->
    @model.bind 'remove', @remove
    @model.view = @
  render: ->
    @$(@.el).html bookTemplate book : @model.toJSON
  toggleSelect: ->
    total = apps.collections.books.selected().length
    $('#books-selected').html 'Selected: '+total
