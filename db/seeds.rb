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

15.times do
	Event.create(
		start_date: Faker::Date.forward(days: 100),
		duration: rand(3..20) * 5,
		title: Faker::Movies::Hobbit.location,
		description: Faker::Movies::Hobbit.quote,
		price: rand(1..1000),
		location: Faker::Address.city)
end
