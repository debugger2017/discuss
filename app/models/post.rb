class Post < ApplicationRecord
	belongs_to :membership
	#belongs_to :user  
	#belongs_to :group 
	has_many :comments , dependent: :destroy
end
