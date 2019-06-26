class Guest < ApplicationRecord
	belongs_to :room

	validates :name, presence: true

	validate :capacity_limit

	private

	def capacity_limit
		if self.room.guests.count > self.room.capacity
			errors.add(:capacity, "can't be exceeded")
		end
	end

end
