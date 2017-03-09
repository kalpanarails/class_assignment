class Notifier < ApplicationMailer
	def book_added(book)
		@name = book.name
		@author = book.author
		mail(:to=>"kalpanachoudhary03@gmail.com",:subject=>"ALERT : A new book has been added")
	     
	end	
end
