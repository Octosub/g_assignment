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
counter = 0
40.times do
  Course.create!(title: Faker::Educator.course_name, description: Faker::Quote.famous_last_words, semester: counter.even? ? 'SoSe' : 'WiSe', credits: 3, teacher: Teacher.all.sample, start_time: Faker::Time.between_dates(from: Date.today - 1, to: Date.today, period: :day))
  counter += 1
end

#Create registrations
puts "Creating registrations..."
User.all.each do |user|
  counter = 1
  3.times do
    courses = Course.all
    Registration.create!(course: courses[counter], user: user)
    counter += [1, 3, 4, 7, 9].sample
  end
end
