class Event < ApplicationRecord
	has_many :attendances
	has_many :users, through: :attendances

	validate :date_cannot_be_in_the_past
	validate :multiple_of_five
	validates :title, presence: true, length: { in: 5..140 }
	validates :description, presence: true, length: { in: 20..1000 }
	validates :price, presence: true, numericality: { only_integer: true, in: 1..1000 }
	validates :location, presence: true

	def date_cannot_be_in_the_past
 	   if !start_date.present? || start_date < Date.today
 	     errors.add(:start_date, "can't be in the past")
 	   end
	end

	def multiple_of_five
 	   if !duration.present? || duration % 5 != 0 || duration <= 0
 	     errors.add(:duration, "not a multiple of 5 or the number is negativ")
 	   end
	end
end
