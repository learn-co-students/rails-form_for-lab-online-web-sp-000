# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
joe = Student.create(first_name: "Joe", last_name: "Smith")
sally = Student.create(first_name: "Sally", last_name: "Smith")
class1 = SchoolClass.create(title: "Civics", room_number: "100")
class2 = SchoolClass.create(title: "Art", room_number: "200")