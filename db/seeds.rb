User.delete_all
Event.delete_all

10.times do
	fn = Faker::Name.first_name
	user = User.create(
		first_name: fn,
		last_name: Faker::Name.last_name,
		description: Faker::GreekPhilosophers.quote,
		email: fn + "@yopmail.com",
		encrypted_password: Faker::Internet.password)
end
