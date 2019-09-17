# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Users
User.create!(name: "Example User",
             email: "example@fakemail.org",
             password: "foobar",
             password_confirmation: "foobar")

50.times do |n|
            name = Faker::Name.name
            email = "example-#{n+1}@fakemail.org"
            password = "password"
            User.create!(name: name,
                         email: email,
                         password: password,
                         password_confirmation: password)
end



# Calories Logs
users = User.order(:created_at).take(50)
120.times do
        calories_number = Faker::Number.between(from: 100, to: 2500)
        calories_type = Faker::Boolean.boolean(true_ratio: 0.2)
        calories_related_activity = Faker::Lorem.sentence(word_count: 3)

        users.each { |user| user.calory.create!(calories_number: calories_number,
                                                    calories_type: calories_type,
                                                    calories_related_activity: calories_related_activity ) }
end
