class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  validates :email, format: { with: /\b[A-Z0-9._%a-z\-]+@student\.unimelb\.edu\.au\z/,
                  message: "must be a '@student.unimelb.edu.au' address" }

	has_and_belongs_to_many :events
  has_and_belongs_to_many :clubs
  has_many :comments
  has_many :reservations

  	def full_name
		"#{first_name} #{last_name}"
  	end

	def return_likes_club(student_id, club_id)
	  	@student = Student.find(student_id)
	  	@club = Club.find(club_id)
	  	@student.clubs.where(:id => @club.id).exists?
  	end

  	def return_likes_event(student_id, event_id)
	  	@student = Student.find(student_id)
	  	@event = Event.find(event_id)
	  	@student.events.where(:id => @event.id).exists?
  	end
	
	def return_has_reservation(student_id, event_id)
		@student = Student.find(student_id)
	  	@event = Event.find(event_id)
		@student.reservations.where(:event_id => @event.id).exists?
	end
	
	def count_reservations(student_id)
		@student = Student.find(student_id)
		@student.reservations.count
	end

end
