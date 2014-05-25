# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Club Template
#{ name: '', description: '', email: '@fakemail.com', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now }
		

	@clubs = Club.create([
		{ name: 'Penguin Club', description: 'A club for people who love penguins.', email: 'jamesj223@gmail.com', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{ name: 'Dodo Club', description: 'A club for people who love dodos.', email: 'dodo@fakemail.com', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{ name: 'Science Students Society', description: 'Working hard to distract you from study.', email: 'sss@fakemail.com', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{ name: 'Melbourne University Engineering Student Club', description: 'MUESC for short. One of the oldest clubs on campus, proudly carrying on the engineering tradition.', email: 'muesc@fakemail.com', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{ name: '#5 Appreciation Club', description: '5 is the best number!', email: 'five@fakemail.com', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now }
		

		])


# Student Template
#{first_name: '', last_name: '', email: '@student.unimelb.edu.au', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },

	@students = Student.create([
		# Real
		{first_name: 'James', last_name: 'Johnstone', email: 'jameswj@student.unimelb.edu.au', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		
		# Fake
		{first_name: 'John', last_name: 'Smith', email: 'jsmith@student.unimelb.edu.au', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{first_name: 'Harry', last_name: 'Potter', email: 'hpotter@student.unimelb.edu.au', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{first_name: 'Peter', last_name: 'Parker', email: 'pparker@student.unimelb.edu.au', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{first_name: 'John', last_name: 'Snow', email: 'jsnow@student.unimelb.edu.au', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{first_name: 'Arnold', last_name: 'Schwarzenegger', email: 'aschwarzenegger@student.unimelb.edu.au', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{first_name: 'Ewan', last_name: 'McGregor', email: 'emcgregor@student.unimelb.edu.au', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{first_name: 'James', last_name: 'Roday', email: 'jroday@student.unimelb.edu.au', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{first_name: 'Shaun', last_name: 'Spencer', email: 'sspencer@student.unimelb.edu.au', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{first_name: 'Michael', last_name: 'Bluth', email: 'mbluth@student.unimelb.edu.au', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{first_name: 'GOB', last_name: 'Bluth', email: 'gbluth@student.unimelb.edu.au', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{first_name: 'Oscar', last_name: 'Bluth', email: 'obluth@student.unimelb.edu.au', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{first_name: 'Lucille', last_name: 'Bluth', email: 'lbluth@student.unimelb.edu.au', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{first_name: 'Buster', last_name: 'Bluth', email: 'bbluth@student.unimelb.edu.au', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{first_name: 'George Michael', last_name: 'Bluth', email: 'gmbluth@student.unimelb.edu.au', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{first_name: 'Lindsay', last_name: 'Funke', email: 'lfunke@student.unimelb.edu.au', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{first_name: 'Tobias', last_name: 'Funke', email: 'tfunke@student.unimelb.edu.au', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{first_name: 'Maeby', last_name: 'Funke', email: 'mfunke@student.unimelb.edu.au', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now }
		


		])


# Event Template
#{ club_id: '', name: '', description: '', when: 'datetime', location: '', maxTickets: '', ticketPrice: '', memberDiscount: ''}
		

	@events = Event.create([
		{ club_id: '1', name: 'Penguin BBQ', description: 'First BBQ of the year.', when: Time.now+(60 * 60 * 24 *3 ), location: 'South Lawn', maxTickets: '', ticketPrice: '', memberDiscount: ''},
		{ club_id: '3', name: 'End of Exams Party', description: 'SSS famous EOX', when: Time.now+(60 * 60 * 24 *14 ), location: 'A nightclub', maxTickets: '', ticketPrice: '15', memberDiscount: ''},
		{ club_id: '4', name: 'Eng Ball', description: 'The biggest engineering party of the year', when: Time.now+(60 * 60 * 24 *44 ), location: 'A fancy ballroom', maxTickets: '500', ticketPrice: '92', memberDiscount: '5'},
		{ club_id: '2', name: 'Guest Lecture from Dodo Expert', description: 'The author of the book "The dodos arent gone, they are just hiding really well" reading a chapter of his book and taking questions', when: Time.now+(60 * 60 * 24 *5 ), location: 'Public Lecture Theatre', maxTickets: '', ticketPrice: '', memberDiscount: ''},
		{ club_id: '5', name: '$5 lunch', description: 'Thanks to our sponsors, Subway, we will be having a $5 5-inch sub lunch!', when: Time.now+(60 * 60 * 24 *5 ), location: 'South Lawn', maxTickets: '', ticketPrice: '5', memberDiscount: ''}

		])



# EventLikes 
#
	for student in @students
		for event in @events
			student.events << event
		end
	end


# ClubLikes 
#
	for student in @students
		for club in @clubs
			student.clubs << club
		end
	end

# Comments
	@comments = Comment.create([
		{ event_id: '1', student_id: '1', content: 'Super excited for this event!'},
		{ event_id: '1', student_id: '2', content: 'Aww yeah! Penguin BBQ!'},
		{ event_id: '1', student_id: '3', content: 'Will there be Halal Sausages?'},
		{ event_id: '2', student_id: '4', content: 'Woo hoo! Can\'t wait!'}

		])