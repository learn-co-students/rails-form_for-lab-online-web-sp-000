# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.create(first_name: "Muhammad", last_name: "Ali")
Student.create(first_name: "Mike", last_name: "Tyson")
Student.create(first_name: "Magic", last_name: "Jonhson")
Student.create(first_name: "Lebron", last_name: "James")
Student.create(first_name: "Serena", last_name: "Williams")
SchoolClass.create(title:"Taking Souls 101", room_number: 1)
SchoolClass.create(title:"Championship Mindset", room_number: 2)
SchoolClass.create(title:"Breaking Wills", room_number: 3)
SchoolClass.create(title:"Greatness", room_number: 4)
SchoolClass.create(title:"Passion 200", room_number: 5)