class Book < ActiveRecord::Base

	belongs_to :user
	def self.search(query)
  	where("book_name like ?", "%#{query}%") 
	end

end
