class Group < ApplicationRecord
	validates :name, presence: true, length: {maximum: 8},
				uniqueness: true

 	has_many :memberships , dependent: :destroy
	has_many :users , :through => :memberships	
	has_many :invitations , dependent: :destroy
	has_many :requests , dependent: :destroy
	has_many :posts , :through => :memberships , dependent: :destroy
	has_many :comments , :through => :posts , dependent: :destroy
end
