class Group < ApplicationRecord
	validates :name, presence: true, length: {maximum: 8},
				uniqueness: true

 	has_many :memberships , dependent: :destroy
	has_many :users , :through => :memberships	
	has_many :invitations , dependent: :destroy
end
