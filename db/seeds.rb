# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.where(email: "buyer@example.com", 
						first_name: "buyer", 
						last_name: "test").first_or_initialize
user.password = "12345678"
user.log_type = UserType.where(type_name:  "buyer").first
user.confirm!
user.save!

user = User.where(email: "seller@example.com", 
						first_name: "seller", 
						last_name: "test").first_or_initialize
user.password = "12345678"
user.log_type = UserType.where(type_name:  "seller").first
user.confirm!
user.save!
