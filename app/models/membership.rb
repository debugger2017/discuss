class Membership < ApplicationRecord
	belongs_to :user
	belongs_to :group
	has_many :posts , dependent: :destroy
	has_many :comments , :through => :posts , dependent: :destroy
end
