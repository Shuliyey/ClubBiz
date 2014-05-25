class Event < ActiveRecord::Base
	validates :name, presence: true
	validates :description, presence: true
	validates :club_id, presence: true
	validates :location, presence: true
	validates :when, presence: true

	# Validate event datetime to be greater than today
	validate  :greater_than_now



	belongs_to :club

	has_and_belongs_to_many :students

	has_many :comments
	has_many :reservations

	def count_likes(event_id)
		@event = Event.find(event_id)
		@event.students.count
	end

	# Validate event datetime to be greater than today
	def greater_than_now
		errors.add(:when, "Cannot create events in the past.") unless
        self.when > Time.now
  	end 
	
	def count_reservations(event_id)
		@event = Event.find(event_id)
		@event.reservations.count
	end
		

end
