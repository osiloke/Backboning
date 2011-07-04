Book = require('models/book_model').Book
class exports.BookCollection extends Backbone.Collection
  model : Book
  url   : '/books',
  cheap : ->
    @filter (book) ->
      book.get 'price' < 10.0