class Room < ApplicationRecord
	has_many :guests

	validates :roomnum, :bedrooms, :bathrooms, :size, :capacity, :cost, presence: true
end
