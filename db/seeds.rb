require 'faker'

Review.destroy_all
HaveSkill.destroy_all
Apply.destroy_all
Job.destroy_all
Event.destroy_all
User.destroy_all
Skill.destroy_all

#---------------------------------
Skill.create!([
  {name: "Concepteur son", category: "Son - Lumière"},
  {name: "Régisseur son", category: "Son - Lumière"},
  {name: "Téchnicien son ", category: "Son - Lumière"},
  {name: "Régisseur lumière", category: "Son - Lumière"},
  {name: "Technicien lumière", category: "Son - Lumière"},
  {name: "Électricien", category: "Son - Lumière"},
  {name: "Technicien des effets spéciaux", category: "Son - Lumière"},

  {name: "Concepteur vidéo - image", category: "Vidéo - Image"},
  {name: "Régisseur vidéo - image", category: "Vidéo - Image"},
  {name: "Technicien vidéo - image", category: "Vidéo - Image"},

  {name: "Régisseur", category: "Structure - Rigger - Plateau"},
  {name: "Technicien", category: "Structure - Rigger - Plateau"},

  {name: "Gardiennage", category: "Emplois techniques des services généraux"},
  {name: "Sécurité", category: "Emplois techniques des services généraux"},
  {name: "Entretien", category: "Emplois techniques des services généraux"},
  {name: "Informatique", category: "Emplois techniques des services généraux"},

  {name: "Décorateur-costumier", category: "Décors - Costume"},
])
#---------------------------------
#Users :
#Organizers

organizer1 = User.create!(
  email: "organisateur1@gmail.com",
  password: "azerty",
  first_name: "orga1-firstname",
  last_name: "orga1-lastname",
  phone_number: 0424242424,
  organizer:true)

organizer2 = User.create!(
  email: "nil@gmail.com",
  password: "azerty",
  first_name: "Nil",
  last_name: "Nil Besombes",
  phone_number: 0424242425,
  organizer:true)

organizer3 = User.create!(
  email: "clubmed@vacances.fr",
  password: "azerty",
  first_name: "Ayoub",
  last_name: "Ben Thabet",
  phone_number: 0424242430,
  organizer:true)

#technicians

technician1 = User.create!(
  email: "technicien1@gmail.com",
  password: "azerty",
  first_name: "tech1-firstname",
  last_name: "tech1-lastname",
  phone_number: 0424242426,
  organizer: false)

technician2 = User.create!(
  email: "max@gmail.com",
  password: "azerty",
  first_name: "Maximne",
  last_name: "Legras",
  phone_number: 0424242427,
  organizer: false)

technician3 = User.create!(
  email: "alexis@gmail.com",
  password: "azerty",
  first_name: "Alexis",
  last_name: "Dewerdt",
  phone_number: 0424242437,
  organizer: false)


#---------------------------------
#Events

e1 = Event.create!(
  name: "Armada 2019",
  full_address: "107 Quai Jean de Béthencourt, 76100 Rouen",
  description: "L'Armada 2019 marquera la septième édition de cette manifestation qui rassemble les plus beaux bateaux du monde sur les quais de Rouen.",
  picture_url: "data:image/jpeg;base64,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",
  company: "Armada de Rouen",
  user_id: organizer1.id,
  start_date: 5.day.from_now,
  end_date: 7.day.from_now)

e2 = Event.create!(
  name: "Aidez-moi!",
  full_address: "20 rue des Capucins, 69001 Lyon",
  description: "Presentation des projets de jeunes talents",
  picture_url: "picture_url...",
  company: "Le Wagon",
  user_id: organizer2.id,
  start_date: 1.day.from_now,
  end_date: 2.day.from_now)

e3 = Event.create!(
  name: "Grizou Party",
  full_address: "1038 Avenue Maréchal de Lattre de Tassigny, 71000 Mâcon",
  description: "4 créations de spectacles et d'évènements sur l'ensemble du village",
  picture_url: "picture_url...",
  company: "Striker",
  user_id: organizer3.id,
  start_date: 10.day.from_now,
  end_date: 15.day.from_now)
#---------------------------------
#skills :

skill1 = Skill.find_by(name: "Concepteur son")
skill2 = Skill.find_by(name: "Informatique")
skill3 = Skill.find_by(name: "Technicien")
skill4 = Skill.find_by(name: "Technicien lumière")

#---------------------------------
#Jobs pertaining to event:
e1_job1 = Job.create!(
  description: "Besoin de son urgent",
  start_at: 5.day.from_now,
  end_at: 6.day.from_now,
  event_id: e1.id,
  skill_id:skill1.id
)

e1_job2 = Job.create!(
  description: "Problemes systeme informatique",
  start_at: 6.day.from_now,
  end_at: 7.day.from_now,
  event_id: e1.id,
  skill_id:skill2.id
)

e2_job1 = Job.create!(
  description: "Livraison, installation, présence au spectacle et démontage",
  start_at: 1.day.from_now,
  end_at: 2.day.from_now,
  event_id: e2.id,
  skill_id:skill3.id
)

e3_job1 = Job.create!(
  description: "Technicien lumière - DJ (H/F)",
  start_at: 10.day.from_now,
  end_at: 15.day.from_now,
  event_id: e3.id,
  skill_id:skill4.id
)


#---------------------------------
# RequiredSkill.create!(job: e1_job1, skill: Skill.find_by(name: "Concepteur son"))
# RequiredSkill.create!(job: e1_job1, skill: Skill.find_by(name: "Régisseur lumière"))
#---------------------------------
#Applies

apply1 = Apply.create!(
  status: "pending",
  job_id: e1_job1.id,
  user_id: technician1.id
)
# apply2 = Apply.create!(
#   status: "approved",
#   job_id: e1_job1.id,
#   user_id: technician1.id
# )
# apply3 = Apply.create!(
#   status: "declined",
#   job_id: e1_job1.id,
#   user_id: technician1.id
# )




#---------------------------------
HaveSkill.create!(user: technician1, skill: Skill.find_by(name: "Concepteur son"))

#---------------------------------
reviews1 = Review.create!(
  rating: "4",
  content: "cool",
  creator_id: organizer1.id,
  destinator_id: technician1.id
)
  puts "DB SEEDED THX YOU MAXKRAK"

######################## FAKE DATA
exit

users = []
events = []
jobs =[]

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

# events.each do |e|
#   rand(3).times do |j|
#   jobs << Job.create!(
#     description:
#     category:
#     start_date:
#     end_date:
#     start_time:
#     end_time:
#     event_id: e.id,
#   end
# end


# Applies


# Skills   .... List of skils tableau>>???????

# Have_skills

# required_skills

# reviews

