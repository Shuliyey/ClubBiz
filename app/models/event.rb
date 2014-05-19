class Event < ActiveRecord::Base
	validates :name, presence: true
	validates :description, presence: true
	validates :club_id, presence: true

	belongs_to :club

	has_and_belongs_to_many :students

end
