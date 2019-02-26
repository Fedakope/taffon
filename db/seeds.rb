Event.destroy_all

event = Event.new(
    name: "Pitch Day",
    full_address: "Lyon",
    company: "Wagon",
    description: "An event for pitching",
    picture_url: "test",
    user_id: 1
  )

event2 = Event.new(
    name: "Party night ",
    full_address: "Here",
    company: "Wagon",
    description: "A night to remember",
    picture_url: "party",
    user_id: 1
)
event.save!
event2.save!

puts "Events generated!"