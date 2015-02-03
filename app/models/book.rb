class Book < ActiveRecord::Base

	belongs_to :user
	def self.search(query)
  	where("book_name like ?", "%#{query}%") 
	end
	has_attached_file :photo
	do_not_validate_attachment_file_type :photo

end
