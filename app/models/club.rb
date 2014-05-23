class Club < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_many :events

  has_and_belongs_to_many :students

	def full_name
		"#{name}"
	end

	def count_likes(club_id)
		@club = Club.find(club_id)
		@club.students.count
	end

end