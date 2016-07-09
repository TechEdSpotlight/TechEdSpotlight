# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'ffaker'

User.destroy_all
Story.destroy_all

user = User.create(
  fname: 'Peter', 
  lname: 'Lai', 
  email: 'peter@gmail.com', 
  role: 'Student',
  district: '',
  city: Faker::Address.city,
  platform: 'Mac',
  interests: Faker::Movie.title,
  subject: Faker::Education.major,
  password: 'topsecret123', 
  password_confirmation: 'topsecret123'
  )

10.times do
  Story.create(
    title: Faker::DizzleIpsum.word,
    overview: Faker::DizzleIpsum.sentence,
    story: Faker::DizzleIpsum.paragraph,
    user: user
    )
end

10.times do
  user = User.create(
    fname: Faker::Name.first_name, 
    lname: Faker::Name.last_name, 
    email: Faker::Internet.email, 
    role: 'Student',
    district: '',
    city: Faker::Address.city,
    platform: 'Mac',
    interests: Faker::Movie.title,
    subject: Faker::Education.major,
    password: 'topsecret123', 
    password_confirmation: 'topsecret123'
    )

  10.times do
    Story.create(
      title: Faker::DizzleIpsum.word,
      overview: Faker::DizzleIpsum.sentence,
      story: Faker::DizzleIpsum.paragraph,
      user: user
      )
  end

end
