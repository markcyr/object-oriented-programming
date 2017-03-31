class Book

  @@on_shelf = []
  @@on_loan = []

  attr_accessor :due_date

# This instance method makes a new book object. It should initialize a book's title, author, and isbn.
  def initialize(title,author,isbn)
    @title = title
    @author = author
    @isbn = isbn.to_i
    @borrow = false
  end

#   def return_to_library
#
#   end
#
  def self.create(title,author,isbn)
    new_book = new(title,author,isbn)
    @@on_shelf << new_book
    new_book
  end

  def self.avaliable
     @@on_shelf
  end

  def self.on_shelf
    @@on_shelf
  end

  def self.on_loan
    @@on_loan
  end

  def self.browse
  #     item = @@on_shelf.sample
  #     puts item
  @@on_shelf.sample
  end

   def lent_out?
     @@_loan.each_index do |isbn|
     if isbn == true
       "Book is checked out"
     else
       "Go grab the book"
   end
#   def self.current_due_date
#
#   end

end


book1 = Book.create("book1","sam",1)
book2 = Book.create("book2","sam",2)
book3 = Book.create("book3","sam",3)
book4 = Book.create("book4","sam",4)
book5 = Book.create("book5","sam",5)


#This instance method is how a book is taken out of the library.
#This method should use lent_out? to check if the book is already on loan,
#and if it is this method should return false to indicate that the attempt to borrow the book failed.
#Otherwise, use current_due_date to set the due_date of the book and move it from the collection of
#available books to the collection of books on loan, then return true.
#  def borrow (isbn)
#  @@on_shelf.each_index do |isbn|
#    if @@on_shelf.fetch[3] = isbn
#      "It's checked out"
#    else
#      @@on_loan << self

#  end

#This instance method is how a book gets returned to the library.
#It should call lent_out? to verify that the book was actually on loan.
#If it wasn't on loan in the first place, return false.
#Otherwise, move the book from the collection of books on loan to the collection of books on the library shelves,
#and set the book's due date to nil before returning true.

#This instance method return true if a book has already been borrowed and false otherwise.


#This class method should return a list of books whose due dates are in the past (ie. less than Time.now).
#   def self.overdue_books
#     @@_loan.each_index do |date|
#
#   end
# #This class method should return a random book from @@on_shelf
#(you may need to consult the Array docs to figure out how to do this).
  # def self.browse
  #     item = @@on_shelf.sample
  #     puts item
  # end

#This class method should return the value of @@on_shelf.

# #This class method should return the value of @@on_loan.
#   def self.borrowed
# put " There are #{@@on_shelf} borrowed from the library"
#   end


#This class method should return the due date for books taken out today.
#It's up to you to decide how far in the future the due date should be.
#You can refer to the section about Time

# .

  # def borrow (isbn)
  #  @@on_shelf.each_index do |isbn|
  #  if @@on_shelf.fetch[3] = isbn
  #    "It's checked out"
  #  else
  #    @@on_loan << self
  # end
