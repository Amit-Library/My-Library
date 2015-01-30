class User < ActiveRecord::Base

	has_many :books
  # Include default devise modules. Others available are:
  #  :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

         def seller?
         	self.log_type == "Seller"
         end
end
