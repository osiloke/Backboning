class exports.Book extends Backbone.Model
   initialize: ->
     @set('title':'a default title')
     @
   give: ->
   sell: ->
   clear: ->
     @destroy
     @view.remove
     @