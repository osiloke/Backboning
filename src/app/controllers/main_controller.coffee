class exports.MainController extends Backbone.Controller
  routes :
    "home"    : "home"
    "!/books" : 'books'
  home: ->
    $('body').html app.views.home.render().el
  books: ->
    app.views.books.render
  