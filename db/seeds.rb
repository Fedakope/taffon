require 'faker'

Event.destroy_all
User.destroy_all



organizer1 = User.create!(
  email: "organizer1@gmail.com",
  password: "azerty",
  first_name: "orga1-firstname",
  last_name: "orga1-lastname",
  phone_number: 0424242424,
  organizer:true)

technician1 = User.create!(
  email: "technician1@gmail.com",
  password: "azerty",
  first_name: "tech1-firstname",
  last_name: "tech1-lastname",
  phone_number: 0424242426,
  organizer: false)

event1 = Event.create!(
  name: "event1",
  full_address: "adress...",
  description: "description...",
  picture_url: "picture_url...",
  company: "company...",
  user_id: organizer1.id,
  start_date: 1.day.from_now,
  end_date: 2.day.from_now)



######################## FAKE DATA


users = []
events = []

10.times do |n|
  users << User.create!(
    email: Faker::Internet.email,
    password: "azerty",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    phone_number: Faker::Number.leading_zero_number(10),
    organizer: n.odd?)
end

organizer_users = users.select {|u| u.organizer }

organizer_users.each do |u|
  rand(5).times do |n|
  events << Event.create!(
    name: Faker::Superhero.descriptor,
    full_address: Faker::Address.full_address,
    description: Faker::Marketing.buzzwords,
    picture_url: "picture_url...",
    company: Faker::Company.name,
    user_id: u.id,
    start_date: 1.day.from_now,
    end_date: 2.day.from_now)
  end
end



# jobs
#    description:
#    category:
#    start_date:
#    end_date:
#    start_time:
#    end_time:
#    event_id: job1.event=event1??


# Applies


# Skills   .... List of skils tableau>>???????

# Have_skills

# required_skills

# reviews

