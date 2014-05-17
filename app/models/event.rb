class Event < ActiveRecord::Base
	validates :name, presence: true
	validates :description, presence: true
	validates :club_id, presence: true
end
