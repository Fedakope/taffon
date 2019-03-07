require 'faker'
Order.destroy_all
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
  picture_url: "https://cdn.deguisetoi.fr/images/rep_art/gra/217/3/217347/cagoule-humoristique-tete-de-gland-adulte_217347.jpg",
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
  picture_url: "https://www.teteacoiffer.com/wp-content/uploads/2018/01/barbie.png",
  first_name: "tech1-firstname",
  last_name: "tech1-lastname",
  full_address: "147 Avenue du Maréchal Juin, 76230 Bois-Guillaume",
  phone_number: 0424242432,
  organizer: false
  )
technician2 = User.create!(
  email: "max@gmail.com",
  password: "azerty",
  photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0IkN0R6sDbPSByOpikeeBjDC_5uAKQYy6z3eRDq3ufQ8G1pN1",
  picture_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0IkN0R6sDbPSByOpikeeBjDC_5uAKQYy6z3eRDq3ufQ8G1pN1",
  first_name: "Maxime",
  last_name: "Legras",
  full_address: "15 Rue Bossuet, 69006 Lyon",
  phone_number: 0424242427,
  organizer: false
  )
technician3 = User.create!(
  email: "alexis@gmail.com",
  password: "azerty",
  photo: "https://img1.freepng.fr/20180421/sfe/kisspng-computer-icons-avatar-child-clip-art-5adb327b418037.4283260315243147472683.jpg",
  picture_url: "https://img1.freepng.fr/20180421/sfe/kisspng-computer-icons-avatar-child-clip-art-5adb327b418037.4283260315243147472683.jpg",
  first_name: "Alexis",
  last_name: "Dewerdt",
  full_address: "Place de la Mairie, 01960 Péronnas",
  phone_number: 0424242437,
  organizer: false
  )

#---------------------------------
#Events

e1 = Event.create!(
  name: "Armada 2019",
  full_address: "107 Quai Jean de Béthencourt, 76100 Rouen",
  description: "L'Armada 2019 marquera la septième édition de cette manifestation qui rassemble les plus beaux bateaux du monde sur les quais de Rouen.",
  picture: "http://fis-cal.com/wp-content/uploads/2013/10/EVENTS.png",
  company: "Armada de Rouen",
  user_id: organizer1.id,
  start_date: 5.day.from_now,
  end_date: 7.day.from_now)

e2 = Event.create!(
  name: "Aidez-moi!",
  full_address: "20 rue des Capucins, 69001 Lyon",
  description: "Presentation des projets de jeunes talents",
  picture: "https://blog.socedo.com/wp-content/uploads/2016/09/Events.jpg",
  company: "Le Wagon",
  user_id: organizer2.id,
  start_date: 1.day.from_now,
  end_date: 2.day.from_now)

e3 = Event.create!(
  name: "Grizou Party",
  full_address: "1038 Avenue Maréchal de Lattre de Tassigny, 71000 Mâcon",
  description: "Soiree privee pour diffusion video des meilleurs buts",
  picture: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQp42gwvTjsBLYg-VFuYVLvEyqwLyJEV-X5yrUN4MBuKIWxfKW6dA",
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
  job_sku: "son_urgent",
  skill_id:skill1.id
)

e1_job2 = Job.create!(
  description: "Problemes systeme informatique",
  start_at: 6.day.from_now,
  end_at: 7.day.from_now,
  event_id: e1.id,
  job_sku: "info_urgent",
  skill_id:skill2.id
)

e2_job1 = Job.create!(
  description: "Livraison, installation, présence au spectacle et démontage",
  start_at: 1.day.from_now,
  end_at: 2.day.from_now,
  event_id: e2.id,
  job_sku: "installation_urgent",
  skill_id:skill3.id
)

e3_job1 = Job.create!(
  description: "Technicien lumière - DJ (H/F)",
  start_at: 10.day.from_now,
  end_at: 15.day.from_now,
  event_id: e3.id,
  job_sku: "light_urgent",
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
HaveSkill.create!(user: technician1, skill: Skill.find_by(name: "Technicien des effets spéciaux"))
HaveSkill.create!(user: technician2, skill: Skill.find_by(name: "Technicien lumière"))
HaveSkill.create!(user: technician2, skill: Skill.find_by(name: "Technicien"))
HaveSkill.create!(user: technician3, skill: Skill.find_by(name: "Informatique"))
HaveSkill.create!(user: technician3, skill: Skill.find_by(name: "Concepteur vidéo - image"))


#---------------------------------
reviews1 = Review.create!(
  rating: "4",
  content: "cool",
  creator_id: organizer1.id,
  destinator_id: technician1.id)

reviews1 = Review.create!(
  rating: "5",
  content: "Excellent services",
  creator_id: organizer2.id,
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

