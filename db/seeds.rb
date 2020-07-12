# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
SchoolClass.create(:title => "Science", :room_number => 101)
SchoolClass.create(:title => "English", :room_number => 201)
SchoolClass.create(:title => "History", :room_number => 301)
SchoolClass.create(:title => "Math", :room_number => 401)



Student.create(:first_name => "Nathan", :last_name => "Kemp")
Student.create(:first_name => "Azriel", :last_name => "Richardson")
Student.create(:first_name => "Jake", :last_name => "Townsend")
