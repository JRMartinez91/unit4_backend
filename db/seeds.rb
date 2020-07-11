# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
    Book.create(
      title: Faker::Book.title,
      author: Faker::Book.author,
      pubdate: Faker::Date.between(from: '1950-01-01', to: '2020-12-31'),
      genre: Faker::Book.genre,
      isbn: Faker::IDNumber.invalid
    )
  end

10.times do
    Guest.create(
      name: Faker::Name.name,
      address: Faker::Address.full_address
    )
  end

10.times do
    Checkout.create(
        book_id: Faker::Number.between(from: 1, to: 10),
        guest_id: Faker::Number.between(from: 1, to: 10),
        start: Faker::Date.between(from: 21.days.ago, to: Date.today),
        due: Faker::Date.between(from: Date.today, to: 21.days.from_now),
        returned: Faker::Date.between(from: 5.days.ago, to: 30.days.from_now)
    )
end