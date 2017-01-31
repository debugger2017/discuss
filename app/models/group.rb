class Group < ApplicationRecord
	validates :name, presence: true, length: {maximum: 8},
				uniqueness: true
end
