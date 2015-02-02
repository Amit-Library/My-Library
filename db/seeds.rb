# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = User.create([{first_name: 'aaaa'},{last_name: 'llll'},{email: 'aaaa@example.com'},{password: '12345678'},{log_type: 'Buyer'}]) 
