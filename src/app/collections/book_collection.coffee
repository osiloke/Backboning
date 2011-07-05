Book = require('models/book_model').Book
class exports.BookCollection extends Backbone.Collection
  url   : 'http://google.com',
  model : Book
