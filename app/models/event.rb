class Event < ActiveRecord::Base
	validates :name, presence: true
	validates :description, presence: true
	validates :club_id, presence: true
	validates :location, presence: true
	validates :when, presence: true

	#TODO validate event datetime to be greater than today

	belongs_to :club

	has_and_belongs_to_many :students

	def count_likes(event_id)
		@event = Event.find(event_id)
		@event.students.count
	end

end
