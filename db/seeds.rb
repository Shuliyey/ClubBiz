# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Club Template
#{ name: '', description: '', email: '@fakemail.com', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now }
		

	clubs = Club.create([
		{ name: 'Penguin Club', description: 'A club for people who love penguins.', email: 'jamesj223@gmail.com', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{ name: 'Dodo Club', description: 'A club for people who love dodos.', email: 'dodo@fakemail.com', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{ name: 'Science Students Society', description: 'Working hard to distract you from study.', email: 'sss@fakemail.com', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{ name: 'Melbourne University Engineering Student CLub', description: 'MUESC for short. One of the oldest clubs on campus, proudly carrying on the engineering tradition.', email: 'muesc@fakemail.com', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now }
		

		])


# Student Template
#{first_name: '', last_name: '', email: '@fakemail.com', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },

	students = Student.create([
		{first_name: 'John', last_name: 'Smith', email: 'jsmith@fakemail.com', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{first_name: 'Harry', last_name: 'Potter', email: 'hpotter@fakemail.com', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{first_name: 'Peter', last_name: 'Parker', email: 'pparker@fakemail.com', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{first_name: 'John', last_name: 'Snow', email: 'jsnow@fakemail.com', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{first_name: 'Arnold', last_name: 'Schwarzenegger', email: 'aschwarzenegger@fakemail.com', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{first_name: 'Ewan', last_name: 'McGregor', email: 'emcgregor@fakemail.com', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{first_name: 'James', last_name: 'Roday', email: 'jroday@fakemail.com', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{first_name: 'Shaun', last_name: 'Spencer', email: 'sspencer@fakemail.com', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{first_name: 'Michael', last_name: 'Bluth', email: 'mbluth@fakemail.com', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{first_name: 'GOB', last_name: 'Bluth', email: 'gbluth@fakemail.com', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{first_name: 'Oscar', last_name: 'Bluth', email: 'obluth@fakemail.com', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{first_name: 'Lucille', last_name: 'Bluth', email: 'lbluth@fakemail.com', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{first_name: 'Buster', last_name: 'Bluth', email: 'bbluth@fakemail.com', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{first_name: 'George Michael', last_name: 'Bluth', email: 'gmbluth@fakemail.com', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{first_name: 'Lindsay', last_name: 'Funke', email: 'lfunke@fakemail.com', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{first_name: 'Tobias', last_name: 'Funke', email: 'tfunke@fakemail.com', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{first_name: 'Maeby', last_name: 'Funke', email: 'mfunke@fakemail.com', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now },
		{first_name: 'James', last_name: 'Johnstone', email: 'jameswj@student.unimelb.edu.au', password: 'asdfjkl;' , password_confirmation: 'asdfjkl;' , confirmed_at: Time.now }
		


		])


# Event Template
#{ club_id: '', name: '', description: '', when: 'datetime', location: '', maxTickets: '', ticketPrice: '', memberDiscount: ''}
		

	events = Event.create([
		{ club_id: '1', name: 'Penguin BBQ', description: 'First BBQ of the year.', when: Time.now+(60 * 60 * 24 *3 ), location: 'South Lawn', maxTickets: '', ticketPrice: '', memberDiscount: ''}

		])

