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
  email: "nil@gmail.com",
  password: "azerty",
  photo: "https://media.licdn.com/dms/image/C5603AQGncq1cXruhtQ/profile-displayphoto-shrink_200_200/0?e=1552521600&v=beta&t=3bi0xKMYWbl7qK4iNdZFXchnHIrZmpZpzNpvOddvcMA",
  picture_url: "https://media.licdn.com/dms/image/C5603AQGncq1cXruhtQ/profile-displayphoto-shrink_200_200/0?e=1552521600&v=beta&t=3bi0xKMYWbl7qK4iNdZFXchnHIrZmpZpzNpvOddvcMA",
  first_name: "Nil",
  last_name: "Besombes",
  phone_number: 0424242424,
  organizer:true)

organizer2 = User.create!(
  email: "davidghetto@gmail.com",
  password: "azerty",
  photo: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/David_Guetta_2013-04-12_001.jpg/1200px-David_Guetta_2013-04-12_001.jpg",
  picture_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/David_Guetta_2013-04-12_001.jpg/1200px-David_Guetta_2013-04-12_001.jpg",
  first_name: "David",
  last_name: "Ghetto",
  phone_number: 0624252474,
  organizer:true)

#technicians

technician1 = User.create!(
  email: "supermario69@gmail.com",
  password: "azerty",
  picture_url: "https://st3.depositphotos.com/1662991/18902/i/1600/depositphotos_189024340-stock-photo-male-sound-technician-working-sound.jpg",
  photo: "https://st3.depositphotos.com/1662991/18902/i/1600/depositphotos_189024340-stock-photo-male-sound-technician-working-sound.jpg",
  first_name: "Mario",
  last_name: "Berlusconi",
  full_address: "82 Boulevard Merle, 69003 Lyon",
  phone_number: 0424242432,
  organizer: false
  )
technician2 = User.create!(
  email: "max@gmail.com",
  password: "azerty",
  photo: "https://media.licdn.com/dms/image/C4D03AQF1ZZcCvWY3_g/profile-displayphoto-shrink_200_200/0?e=1556150400&v=beta&t=H0XYvcSMo7R9en_HzmVCyPEaFsOpRhf2ktumO1wv2Dw",
  picture_url: "https://media.licdn.com/dms/image/C4D03AQF1ZZcCvWY3_g/profile-displayphoto-shrink_200_200/0?e=1556150400&v=beta&t=H0XYvcSMo7R9en_HzmVCyPEaFsOpRhf2ktumO1wv2Dw",
  first_name: "Maxime",
  last_name: "Legras",
  full_address: "15 Rue Bossuet, 69006 Lyon",
  phone_number: 0424242427,
  organizer: false
  )
technician3 = User.create!(
  email: "alexis@gmail.com",
  password: "qwerty",
  photo: "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxAQEBAQEBANEBAVDRIbEBUVDQ8QEA4SIB0iIiAdHxkYKDQgHiYxJx8fJDMtMSs3MS8wIys0OD8uNygtLy0BCgoKDg0NFg8QFTcZFiU3KysrKzctLS03KzIrKy03NystLSs3LSstLSsrKysrLSsrKysrKysrKysrLSsrKysrK//AABEIAMgAyAMBIgACEQEDEQH/xAAcAAEAAQUBAQAAAAAAAAAAAAAABQEDBAYHAgj/xAA8EAABAwIEAwUECQIHAQAAAAABAAIDBBEFEiExBkFxBxMiUWEygZGxFCNCUmJyocHRkvAVU2NzorLxZP/EABkBAQADAQEAAAAAAAAAAAAAAAABAgQDBf/EACIRAQEAAgICAgIDAAAAAAAAAAABAhEDIRIxBEETUSJhcf/aAAwDAQACEQMRAD8A7iiIgIiICIiAiIgIiICLCxTFIKWMzVEscMY3c51guX8Qdt9OwltHA+c/fkvHH/T7Xl5KNjrqL50qO2vE3eyKRnSIn/sVM4L25yhwFZSxuZcXdC8te0czldoemibHckUFw1xZRYi0upZ2vI9phu2VnVp1U7dSCIiAiIgIiICIiAiIgIiICIiAiIgIiIChOLOJIMNp3VE97XsxotnlfyAWbjGKQ0kMk87wyNjbuPyA8yfJfMvHfFU2KVDpH5mRN0gizXETf5PMqtukxF8XcV1WJTumnfpc93G0nu4W+QH781CNB9yBmqzIKUu2tYKEaW2U5PLl5bIabT157qWpYcoPhuctgXey34L1T0TnG7Y3v53Pgb10VfJbxQ1LPLC4Pjc9j2nRzXFpHvC7n2Ydqbqp7aTECwTEAQzWDBM77rhsD5HmuRnBpy6zYyNfK3v1WQMDkY3M9jm676p5yJ8K+sAqrReyril1dTGKdwNTBZrz/ms+y/ryPr1W8rpLtRVERSCIiAiIgIiICIiAiIgIiICIiDkfb7Xu7qkpWk+KR8jx6NFh+pK5vgmBtkZmf56Bbl2zyZsSjab2bSMA97nFQ+DGzbLPyZdtPDjL7WouEYXnnZbFS8IQNjyhtz5qtHve62agILVxuVbJw4tdpODmNeHCNrrHS/L1W00+DQtA8AuB6LJYdArpkVLlT8cWm4bCNQxt+WisVuGRuaQWggtUkCLKxLseartPjHP+Eon0OLwhhOSWQxvHItO1+hsu4hcjZEP8RpDbX6ZH1Gq64Ft4bvF53NNZKoiLs5CIiAiIgIiICIiAiIgIiICIrc0ga0uOgAJPQIOH9shtijPxUkeX4uURQsygXWf2k4vBX1VJNE2RpALH5mjxNzXaQR1Kh8RrJI3ARsDifMkALLyd3ps4ZcfcbHRXK2zDR4QuS/Sa6PxmSmbzyufYqewTjSRtmzxEXPtNcHN/Rc7i0Y8s3qumFumi9RxrAoMUEjWluoPorOP4nJC3NGzObHTNlHUkqjpb9p7JosWY7rnEHF1dI8jNSsBvbM8j4FTtNXYgGkvFNIDsQ5xI+Ci4qTkZsdOf8SohydNm3+6Cf2XTwudxyOZU0k4aHOEU2l7DMWjfpqt1wavM7C4gBwcQ617X9LrVwZTWmP5GGW/L6SKIi0MwiIgIiICIiAiIgIiICIiAFjV8RfFIxvtOieB1IKyV5KD5qfEWmJhBDmyi/oeamfoTXeLnyVviqHua2psPAKpwG9xrf91mUbtQFi5Pb1Ord/tF0OCuEkmZuYuOjjuFnY1h7WU8cZa0ZftBvi2sBdbVQNuNB71HY4zQ35KvlVvxTe2P2esc0vDs1idASdFs+N0xkDm2BJAtda3wpJ9ZpsVvEdnHldUv7Xk6apR8PXfneGXy2IMZIfqDYjqApXB8FEGbV1nG+U2yN6eQ9FO5CNlUt/vVMrbFPGS7RNYWtmp77Znj/ip3hZrr1Fx4e9GX+kXWt4xE58sTG2Bs83IPhA56dVuXD8eWBl9Sbm9rXXX48/k5fIsnF/qTREW15wiIgIiICIiAiIgIiICIiAqFVRBy3tD4ZqJqlzoYnyNlYNWjRrwLa+WwK1Okf7PnYXXfCFw/FIRFV1MQ+xUyAflJuP0Kz8uP21cPLbqX6bBhzwGqL4hjLhp56pHM7u7t1IC1utrKrOWyXjB2Jvb4rP8Abb5pzhOujExabjTyI+a3t0jS4BodtcG2l1zDAsDcZC81Tdb5Re2vUrZqWKth1M8UgG4zC7glhu/cbrG/kV6fstR4e4kkmmfFIwts63NbY/bU6Ln/AEpawKaikmmkewaBoZe40O5/ZbjDGGta0bBoAWBw/DlhDub3Fx0tvt+gCk1u4sPGbYOXkuV19RVERdnIREQEREBERAREQEREBERAREQUXMu1vDBEIsQZYHM2OdtvbBvld1G3RdNWsdosQdQSXF7PjP8Ayt+6rnrS2PtzLB8WbawINyPepiWETHcXHRaFXU74vFH7I1IG4UjguPHQ/htuTr71juP3G/HPV1W3xF7Hsj7qIi176/FbNRwiwJYwH0AK1fD8Va4NLhZxeQb+Sko8eaLA7E+gVMtutz6SbI4jKXADMPa0GqvwH6RJ3MerRYzOGzWeXUrWIpZKuRwp7NjBOZ9vCOltyt34XpGRNe1g08N/MnW5Knjx3l2z8uV8bYnmtA0GgtovSoFVb4wiIikEREBERAREQEREBERAREQERUJUAuedqGISERwRnwAh0482nb4bra8X4igpwczs7+TGkE39fJc9xOvM07pXADMRcbgC1rKZjcky6u2vOiu26jXYJndnid3TidfDdp9y22XDg0Xb7DtvwnyWHh8RDy08tlkylxuq3STObiOpuGcQJuHwkbX8QNvctjoODnkD6VNmAJOVgLL+hcdVPYWS0WI05KRcbrlbamYaUpKVkTA1jQ1oGgFhZZOETWmcNbWaD1Kx6iYMAFszybMaN3uWTBCWNAPtXu4/iXfg47bty+RnJj4tiVVGU+Ji+V4ynkeRUiCtGrGR6REUgiIgIiICIiAiIgIqXUVX43HHdrfrHjcA+FvUoJW6tzTtYLuc1o8yQFqU+NTv2cGD8It+pWA8ucbkknzJJ+atMLUeUbHWcSRt0ja6Q/0t/VQtZi88123yttqG3HxKxBGrrTYWA6q845FbkgMSiI1tqNSsQt16rY/o1ySee6hZosriPun/AMXTRtk4c/TLuDu0rKOGWd3jBmbzH2m/ysGnGoKlK3G4aWJ00z8rG2vYEuJOwA5kqnJxzOdr4ctwvTPpLaWXmpxMNd3cTe9lOzRy9SeQWiO7RaWQuLoZtScoYw3I5XubX9ymezviennlkg7h1PIXEwF7g907Od3ffHy22WWfG77rRflddRuWG0BYTJIc8zh4j9lg+60ch81nOC9heHLVMZjNRjyyuV3WDWMPLe6v09Q9nsuIHkdQj2XXksU3tESNPizTo8ZT57hSLXgi4II9FrRiSMvYbtcR0XO4fpeZNnRREOKkWD239R/CkoJ2vF2kH5hVs0na6iIoSIiICoShVmeUNBJNgBc9FW1KG4lxTuwIWG0jwbkHVjPP3rX6duhsNLqLlrTPUukNzmcbDyZsB8FMULhdzTuDr8Fo48elMq9li85FkPQNV1FkMVcqv5N1bKkecqhcYitKDye23vCnBuo/Ho7x5hu03CCPpRz5WXOe07ES+eOAG8cYJd6ynf4Cw95XR3uys71o0yXAG2fkFyXimEhuZ1y/vruJ3JN7plOkxHUQJI1U1hkFQ+drqbMHwESFwv4LHT++qhsN01N7e9dh7K8KaKKSZw1nlJv/AKbdB+t1WFbpgGKtq6eOZtgSLSN/y5BuP75KQcFp2Hwuw+oza/RZnASeUL/su/Y9VuDypqFtUIVUCol4IXkr2VRErZCox5abgkFXMq8ghEJuhqO8bfmN1kqGopMjx5HdTK5WaXgiIoS8PKgOK6zu6aUg2Lm5R79PkpmZ60jjqqv3cI8i53yH7qs7q3qIjB2jv4x/pGyznSd3N6EWPUKNwmS01I7zDmn4KQx5lg463DyQtkcamJDcKsZWFQTZ2jospx2RDJI36Kw5quByo432UC21eaiMOBB2VyypIEEJXwhjA0Xyi9guY8cOuwDm6X5arp2NHwnouX8W6viHo8/JTfSULRtsy3ouudklcX0T4jvHOQPynxfyuVxN0I9Fu3Y5V5aqohJNnwBwH4mH+HKvpDq8kDXtLHAOaRYg8wvbGWAGpAaALnWwXoKoQURpQpyUJUKoio4KBRxVYmW15oGr05AKmoH5mtPmFC30Unhrrst5OKpktizERFRZHzvXNcXqe9rZPIXaOg0W94rVd3FI/wC6wkdeS5lSutPGTzOvvU8c72nJficWxh3OGpBP5SVPcQvGV3q0EeuijYqcd/LC7aWIgfm5LzW1RdTx39psZa8eThotUcUjgcngBUpKNAVr2DS+FgU9NNpooHvPoqscjW6DovNtEF5iOCrCPkvVtQggscb4T+Vcq4oP1sX5HfMLrmPt8J6LkHE5vPH/ALTvmoqWGxbD2byFuJwfibK0+9p/ha7GVL8Hy5MQo3f/AEtHxuP3UId8CoEGyq1EvJRp0VXhGDRQKAIqogovLyvTirBd4wERV2U2spDCnauHQqGmkvI1o5alSWHPtIPUEKuc6Wx9phERcl2lcVSXjbHf23/oBf8AhaPWNLHtd5FEXXj9GXtO4wzwxVLd2lpKisZePrbHR2V7ffuiLtHJXDT4WW8lMMquRKIoSlY33Cq7kiIhehVwboigRmOjwHoVxniN317f9o/9kRL6Sw4QsvDpSyeB43bPGR7nBVREPoa/z0XtpVEUJUcFVmyIoQEKl1VESx6ycRtLj7vUrCpp8rHSu9yoi6SdK1XDAXZpDu46dFJRvyuafIhEXPP7TinwURFnjq//2Q==",
  picture_url: "data:image/jpeg;base64,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",
  first_name: "Alexis",
  last_name: "Dewerdt",
  full_address: "Place de la Mairie, 69001 Lyon",
  phone_number: 0424242437,
  organizer: false
  )
technician4 = User.create!(
  email: "ayoub@gmail.com",
  password: "azerty",
  photo: "https://lh3.googleusercontent.com/a-/AAuE7mCaVtMTSPN8cnxQE-ymdFRG4BIplgGFRSQ6d2Pf6A=s640-rw-il",
  picture_url: "https://lh3.googleusercontent.com/a-/AAuE7mCaVtMTSPN8cnxQE-ymdFRG4BIplgGFRSQ6d2Pf6A=s640-rw-il",
  first_name: "Ayoub",
  last_name: "Ben Thabet",
  full_address: "2 Rue du Griffon, 69001 Lyon",
  phone_number: 0424242447,
  organizer: false
  )

technician5 = User.create!(
  email: "kevcha@gmail.com",
  password: "azerty",
  photo: "https://res.cloudinary.com/wagon/image/upload/c_fill,w_200/v1550747756/klvaudhtu5pw5qzneqiv.jpg",
  picture_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,w_200/v1550747756/klvaudhtu5pw5qzneqiv.jpg",
  first_name: "Kevin",
  last_name: "Chavanne",
  full_address: "2 Ruelle de St Etienne, 69007 Lyon",
  phone_number: 0424242477,
  organizer: false
  )

technician6 = User.create!(
  email: "jpheos@gmail.com",
  password: "azerty",
  photo: "https://cv.jpheos.fr/assets/images/jpheos.jpg",
  picture_url: "https://cv.jpheos.fr/assets/images/jpheos.jpg",
  first_name: "Joseph",
  last_name: "Blanchard",
  full_address: "73 Rue de Toto, 69009 Lyon",
  phone_number: 0424242497,
  organizer: false
  )

#---------------------------------
#Events

# e1 = Event.create!(
#   name: "Armada 2019",
#   full_address: "107 Quai Jean de Béthencourt, 76100 Rouen",
#   description: "L'Armada 2019 marquera la septième édition de cette manifestation qui rassemble les plus beaux bateaux du monde sur les quais de Rouen.",
#   picture: "https://www.armada.org/assets/images/logo.png",
#   company: "Armada de Rouen",
#   user_id: organizer1.id,
#   start_date: 5.day.from_now,
#   end_date: 7.day.from_now)

# e2 = Event.create!(
#   name: "Aidez-moi!",
#   full_address: "20 rue des Capucins, 69001 Lyon",
#   description: "Presentation des projets de jeunes talents",
#   picture: "https://blog.socedo.com/wp-content/uploads/2016/09/Events.jpg",
#   company: "Le Wagon",
#   user_id: organizer2.id,
#   start_date: 1.day.from_now,
#   end_date: 2.day.from_now)

# e3 = Event.create!(
#   name: "Grizou Party",
#   full_address: "1038 Avenue Maréchal de Lattre de Tassigny, 71000 Mâcon",
#   description: "Soiree privee pour diffusion video des meilleurs buts",
#   picture: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQp42gwvTjsBLYg-VFuYVLvEyqwLyJEV-X5yrUN4MBuKIWxfKW6dA",
#   company: "Striker",
#   user_id: organizer3.id,
#   start_date: 10.day.from_now,
#   end_date: 15.day.from_now)
#---------------------------------
#skills :

skill1 = Skill.find_by(name: "Concepteur son")
skill2 = Skill.find_by(name: "Informatique")
skill3 = Skill.find_by(name: "Technicien")
skill4 = Skill.find_by(name: "Technicien lumière")

# #---------------------------------
# #Jobs pertaining to event:
# e1_job1 = Job.create!(
#   description: "Besoin de son urgent",
#   start_at: 5.day.from_now,
#   end_at: 6.day.from_now,
#   event_id: e1.id,
#   job_sku: "son_urgent",
#   skill_id:skill1.id
# )

# e1_job2 = Job.create!(
#   description: "Problemes systeme informatique",
#   start_at: 6.day.from_now,
#   end_at: 7.day.from_now,
#   event_id: e1.id,
#   job_sku: "info_urgent",
#   skill_id:skill2.id
# )

# e2_job1 = Job.create!(
#   description: "Livraison, installation, présence au spectacle et démontage",
#   start_at: 1.day.from_now,
#   end_at: 2.day.from_now,
#   event_id: e2.id,
#   job_sku: "installation_urgent",
#   skill_id:skill3.id
# )

# e3_job1 = Job.create!(
#   description: "Technicien lumière - DJ (H/F)",
#   start_at: 10.day.from_now,
#   end_at: 15.day.from_now,
#   event_id: e3.id,
#   job_sku: "light_urgent",
#   skill_id:skill4.id
# )


#---------------------------------
# RequiredSkill.create!(job: e1_job1, skill: Skill.find_by(name: "Concepteur son"))
# RequiredSkill.create!(job: e1_job1, skill: Skill.find_by(name: "Régisseur lumière"))
#---------------------------------
#Applies

# apply1 = Apply.create!(
#   job_id: e1_job1.id,
#   user_id: technician1.id
# )
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
HaveSkill.create!(user: technician1, skill: Skill.find_by(name: "Technicien lumière"))
HaveSkill.create!(user: technician1, skill: Skill.find_by(name: "Technicien des effets spéciaux"))
HaveSkill.create!(user: technician2, skill: Skill.find_by(name: "Concepteur son"))
HaveSkill.create!(user: technician2, skill: Skill.find_by(name: "Technicien"))
HaveSkill.create!(user: technician3, skill: Skill.find_by(name: "Informatique"))
HaveSkill.create!(user: technician3, skill: Skill.find_by(name: "Concepteur vidéo - image"))
HaveSkill.create!(user: technician4, skill: Skill.find_by(name: "Régisseur"))
HaveSkill.create!(user: technician4, skill: Skill.find_by(name: "Technicien lumière"))
HaveSkill.create!(user: technician5, skill: Skill.find_by(name: "Technicien des effets spéciaux"))
HaveSkill.create!(user: technician6, skill: Skill.find_by(name: "Gardiennage"))




#---------------------------------
reviews1 = Review.create!(
  rating: "4",
  content: "Mario est un vrai professionnel, notre spectacle de son et lumière a été une vraie reussite grâce a son intervention de dernière minute, Merci Super Mario! 🍄",
  creator_id: organizer1.id,
  destinator_id: technician1.id)

reviews1 = Review.create!(
  rating: "3",
  content: "Un bon technicien son mais quelques difficultés de communication dues à la barrière de la langue",
  creator_id: organizer2.id,
  destinator_id: technician1.id
  )
  puts "DB SEEDED THX YOU MAXKRAK"

######################## FAKE DATA
# exit

# users = []
# events = []
# jobs =[]

# 10.times do |n|
#   users << User.create!(
#     email: Faker::Internet.email,
#     password: "azerty",
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     phone_number: Faker::Number.leading_zero_number(10),
#     organizer: n.odd?)
# end

# organizer_users = users.select {|u| u.organizer }

# organizer_users.each do |u|
#   rand(5).times do |n|
#   events << Event.create!(
#     name: Faker::Superhero.descriptor,
#     full_address: Faker::Address.full_address,
#     description: Faker::Marketing.buzzwords,
#     picture_url: "picture_url...",
#     company: Faker::Company.name,
#     user_id: u.id,
#     start_date: 1.day.from_now,
#     end_date: 2.day.from_now)
#   end
# end

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

