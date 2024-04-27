# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


#Delete existing records
puts "Deleting existing records..."
Registration.destroy_all
Course.destroy_all
Teacher.destroy_all
User.destroy_all

#Create users
puts "Creating users..."
User.create!(email: 'noah@me.com', password: '123123', username: 'noah')
User.create!(email: 'taro@me.com', password: '123123', username: 'yamada.t')

#Create teachers
puts "Creating teachers..."
Teacher.create!(name: 'Saito Hajime', position: 'Professor')
Teacher.create!(name: 'Okita Soji', position: 'Head Teacher')
Teacher.create!(name: 'Takani Megumi', position: 'Teacher')

#Create courses
puts "Creating courses..."
Course.create!(title: 'Introduction to 3JS', description: 'Learn the basics of 3JS', semester: 'SoSe', timeslot: 1, credits: 3, teacher: Teacher.last)
Course.create!(title: 'Gatotsu Intesive Program', description: 'In this course we will go through all versions of Gatotsu', semester: 'WiSe', timeslot: 2, credits: 6, teacher: Teacher.first)
Course.create!(title: 'Medical Training', description: 'Learn how to treat wounds and diseases', semester: 'SoSe', timeslot: 3, credits: 3, teacher: Teacher.last)
Course.create!(title: 'Swordsmanship', description: 'Learn how to use a sword', semester: 'WiSe', timeslot: 4, credits: 3, teacher: Teacher.second)
counter = 5
6.times do
  Course.create!(title: Faker::Educator.course_name, description: Faker::Quote.famous_last_words, semester: counter.even? ? 'SoSe' : 'WiSe', timeslot: counter, credits: 3, teacher: Teacher.all.sample)
  counter += 1
end

#Create registrations
puts "Creating registrations..."
User.all.each do |user|
  3.times do
    Registration.create!(course: Course.all.sample, user: user)
  end
end
