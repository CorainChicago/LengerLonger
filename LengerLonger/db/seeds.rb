# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@user = User.create(first_name: "Charlie", last_name: "Hays", email: "cat@cat.com", password: "1234")

@profile = Profile.create(city: "Chicago", fav_quote: "Meow", goal: "Alex's love", user_id: @user.id)
