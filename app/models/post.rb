class Post < ApplicationRecord
	belongs_to :membership
	#belongs_to :user  
	#belongs_to :group 
	has_many :comments , dependent: :destroy

	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
