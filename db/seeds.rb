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
  city: FFaker::Address.city,
  platform: 'Mac',
  interests: FFaker::Movie.title,
  subject: FFaker::Education.major,
  password: 'topsecret123', 
  password_confirmation: 'topsecret123'
  )

10.times do
  Story.create(
    title: FFaker::DizzleIpsum.word,
    overview: FFaker::DizzleIpsum.sentence,
    story: FFaker::DizzleIpsum.paragraph,
    published: DateTime.now - rand * 50,
    user: user
    )
end

10.times do
  user = User.create(
    fname: FFaker::Name.first_name, 
    lname: FFaker::Name.last_name, 
    email: FFaker::Internet.email, 
    role: 'Student',
    district: '',
    city: FFaker::Address.city,
    platform: 'Mac',
    interests: FFaker::Movie.title,
    subject: FFaker::Education.major,
    password: 'topsecret123', 
    password_confirmation: 'topsecret123'
    )

  10.times do
    Story.create(
      title: FFaker::DizzleIpsum.word,
      overview: FFaker::DizzleIpsum.sentence,
      story: FFaker::DizzleIpsum.paragraph,
      published: DateTime.now - rand * 50,
      user: user
      )
  end

end
