window.app = {}
app.controllers = {}
app.models = {}
app.collections = {}
app.views = {}

MainController = require('controllers/main_controller').MainController
HomeView = require('views/home_view').HomeView
Books = require('collections/book_collection').BookCollection
BookView = require('views/book_view').BookView
Book = require('models/book_model').Book
# app bootstrapping on document ready  
$(document).ready ->
  app.initialize = ->
    app.collections.books = new Books()
    app.models.book = new Book()
    app.controllers.main = new MainController()
    app.views.home = new HomeView()
    app.views.bookView = new BookView model:Book
    Backbone.history.saveLocation("home") if Backbone.history.getFragment() is ''
  app.initialize()
  Backbone.history.start()
