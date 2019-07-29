# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
a_class = SchoolClass.create(title: "A Class ", room_number: "101")
b_class = SchoolClass.create(title: "B Class ", room_number: "102")
c_class = SchoolClass.create(title: "C Class ", room_number: "103")
d_class = SchoolClass.create(title: "D Class ", room_number: "104")


kenton = Student.create(first_name: "King", last_name:  "Kunta")
kester = Student.create(first_name: "Bike", last_name:  "man")
kirk   = Student.create(first_name: "Turbo", last_name: "Speed7")
