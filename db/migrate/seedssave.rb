
DEPENDENCIES = (Hike User Revies)

LEVEL_SEED = "User"


puts "Cleaning database..."
Submission.destroy_all
Message.destroy_all
Review.destroy_all
Trip.destroy_all
User.destroy_all
# Hike.destroy_all

# RANDO SOLUTRE

# Solutre - User generation

puts "Creating Solutre..."

francois = User.create!(
  email: 'francois@whikend.com',
  password: 'aaaaaa',
  first_name: 'Francois',
  last_name: 'Mitterand',
  description: 'Résistant, Homme de lettre passionné par les livres',
  age: 101,
  remote_avatar_url: 'https://cache.20minutes.fr/photos/2014/12/31/president-francois-mitterrand-lors-9633-diaporama.jpg'
  )

roger = User.create!(
  email: 'roger@whikend.com',
  password: 'aaaaaa',
  first_name: 'Roger',
  last_name: 'Hanin',
  description: 'Je suis le beauf de Tonton',
  age: 93,
  remote_avatar_url: 'http://md1.libe.com/photo/715188-france-bio-hanin.jpg?modified_at=1423671399&width=960'
  )

jack = User.create!(
  email: 'jack@whikend.com',
  password: 'aaaaaa',
  first_name: 'Jack',
  last_name: 'Lang',
  description: 'Vive la musique en rando!',
  age: 78,
  remote_avatar_url: 'https://www.ina.fr/images_v2/620x349/CPC88007257.jpeg'
  )

jacques = User.create!(
  email: 'jacques@whikend.com',
  password: 'aaaaaa',
  first_name: 'Jacques',
  last_name: 'Attali',
  description: 'J\'ai la seule boussole qui indique toujours le sud',
  age: 87,
  remote_avatar_url: 'http://s2.lemde.fr/image/2016/08/26/644x0/4988464_6_e89b_jacques-attali-alors-conseiller-special-de_42e000872eb903b70c800c81e1ede3ae.jpg'
  )

hike_solutre = Hike.create!
UniScrapper.new(hike_solutre, "https://www.visorando.com/randonnee-sur-les-pas-de-tonton/")

# Solutre - Trip creation
trip_solutre = Trip.create!(
  title: "Ascension de La Roche de Solutré - sur les pas de Tonton",
  description: "Pélerinage annuel pour honorer une promesse faite aux anciens résistants de la roche de Solutré après la Seconde Guerre Mondiale. Venez nombreux, tout le monde est bienvenue surtout si vous êtes journalistes, le rythme sera détendu",
  start_location: "Lyon",
  hike_id: hike_solutre.id,
  user_id: francois.id,
  date: Date.today+(1),
  trip_type: "Détente",
  seats: 7,
  auto_accept: true,
  fees: (2..7).to_a.sample
)

# Solutre - Submission creation
  Submission.create!(
    content: "Youhou",
    user_id: roger.id.to_i,
    trip_id: trip_solutre.id.to_i,
    accepted: true
  )

  Submission.create!(
    content: "Hate d'y etre",
    user_id: jacques.id.to_i,
    trip_id: trip_solutre.id.to_i,
    accepted: true
  )

  Submission.create!(
    content: "C'est la fête",
    user_id: jack.id.to_i,
    trip_id: trip_solutre.id.to_i,
    accepted: true
  )

############################################

# RANDO CORSE

puts "Creating Corse GR20..."

# Corse - User generation
benoit = User.create!(
  email: 'benoit@whikend.com',
  password: 'aaaaaa',
  first_name: 'Benoit',
  last_name: 'Poelvoorde',
  description: 'Pigeon, oiseau à la grise robe, dans l\'enfer des villes, à mon regard tu te dérobes, tu es vraiment le plus﻿ agile.',
  age: 53,
  remote_avatar_url: 'https://www.quizz.biz/uploads/quizz/896950/15_ky785.jpg'
  )

vincent = User.create!(
  email: 'vincent@whikend.com',
  password: 'aaaaaa',
  first_name: 'Vincent',
  last_name: 'Elbaz',
  description: "La vérité si je mens",
  age: 47,
  remote_avatar_url: 'https://www.notrecinema.com/images/usercontent/star/vincent-elbaz-photo_35923_14761.jpg'
  )

karine = User.create!(
  email: 'karine@whikend.com',
  password: 'aaaaaa',
  first_name: 'Karine',
  last_name: 'Viard',
  description: 'J\'adore les béliers',
  age: 52,
  remote_avatar_url: 'https://sacrenathalie.files.wordpress.com/2015/08/randonneurs-1997-15-g.jpg'
  )

hike_corse = Hike.create!
UniScrapper.new(hike_corse, "https://www.visorando.com/randonnee-gr20-de-bibi/")

# CORSE - Trip creation
trip_corse = Trip.create!(
  title: "Sentier de Grande randonnée 20",
  description: "Grosse rando sympa dans la bonne humeur. Venez si vous voulez décompresser de la ville, de ses bruits et de ses pigeons.",
  start_location: "Bastia",
  hike_id: hike_corse.id,
  user_id: benoit.id,
  date: Date.today+(1),
  trip_type: "Sportive",
  seats: 4,
  auto_accept: false,
  fees: (2..7).to_a.sample
)

# CORSE - Submission creation
Submission.create!(
    content: "Mega chaud",
    user_id: vincent.id.to_i,
    trip_id: trip_corse.id.to_i,
    accepted: true
  )

Submission.create!(
    content: "On va bien se marrer",
    user_id: karine.id.to_i,
    trip_id: trip_corse.id.to_i,
    accepted: true
  )

# USERS
puts "Creating users..."

louis = User.create!(
  email: 'louis@gmail.com',
  password: 'aaaaaa',
  first_name: 'Louis',
  last_name: 'Delon',
  description: 'Je suis un passionné de montagne',
  age: 40,
  remote_avatar_url: 'http://kitt.lewagon.com/placeholder/users/loulouman34'
  )

etienne = User.create!(
  email: 'etienne@gmail.com',
  password: 'aaaaaa',
  first_name: 'Etienne',
  last_name: 'Delorieux',
  description: 'Je suis un passionné de rando',
  age: 27,
  remote_avatar_url: 'https://kitt.lewagon.com/placeholder/users/EtienneDelorieux'
)

alex = User.create!(
  email: 'alexandre_bouvier@hotmail.com',
  password: 'aaaaaa',
  first_name: 'Alexandre',
  last_name: 'Bertrand',
  description: 'Je suis un vrai pro de la rando',
  age: 32,
  remote_avatar_url: 'https://kitt.lewagon.com/placeholder/users/alexandrebk'
)

30.times do
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Hipster.paragraph,
    age: (25..40).to_a.sample,
    remote_avatar_url: 'https://kitt.lewagon.com/placeholder/users/random'
  )
end


# HIKES
# COMMENT THIS LINE FOR SHORT SEED
# MultiScrapper.departments_list



# TRIPS
puts "Creating trips..."
TRIP_TYPES = ["Sportive", "Détente", "Loisir", "Amicale"]

#creation of a trip by Louis
hike_louis = (Hike.first.id..Hike.last.id).to_a.sample
trip = Trip.create!(
  description: "J'organise une rando dans le Vercors",
  start_location: "Lyon",
  hike_id: hike_louis,
  title: "Rando dans le Vercors",
  user_id: louis.id,
  date: Date.today+(1),
  trip_type: TRIP_TYPES.sample,
  seats: (2..6).to_a.sample,
  auto_accept: false,
  fees: (2..7).to_a.sample
)

#creation of a trip by Etienne
trip1 = Trip.create!(
  title: "Rando sur le plateau des Glières",
  description: "J'organise une rando au départ de Lyon Confluence ce samedi. J'ai 3 places dans ma Tesla. Inscrivez-vous vite, y'aura bientôt plus de places.",
  start_location: "Lyon",
  hike_id: ((Hike.first.id)..(Hike.last.id)).to_a.sample,
  user_id: etienne.id,
  date: Date.today+(1),
  trip_type: TRIP_TYPES.sample,
  seats: 3,
  auto_accept: true,
  fees: (2..7).to_a.sample

)

trip2 = Trip.create!(
  title: "Rando dans les Pyrénées et le Pays Basque",
  description: "J'organise une rando au départ de Bayonne mardi prochain. Je ramène du jambon de Bayonne pour le pic-nic :). J'ai un combi Volkswagen",
  start_location: "Bayonne",
  hike_id: ((Hike.first.id)..(Hike.last.id)).to_a.sample,
  user_id: ((User.first.id)..(User.last.id)).to_a.sample,
  date: Date.today+(3),
  trip_type: TRIP_TYPES.sample,
  seats: 6,
  auto_accept: true,
  fees: (2..7).to_a.sample
)

20.times do
  hike = (Hike.first.id..Hike.last.id).to_a.sample
  Trip.create!(
    description: Faker::Hipster.paragraph,
    start_location: Faker::Address.city,
    hike_id: hike,
    title: Hike.find(hike).title,
    user_id: ((User.first.id)..(User.last.id)).to_a.sample,
    date: [Date.today-(7),Date.today+(1),Date.today+(3),Date.today+(7)].sample,
    trip_type: TRIP_TYPES.sample,
    seats: (2..5).to_a.sample,
    auto_accept: [true, false].sample,
    fees: (2..7).to_a.sample
  )
end



# SUBMISSIONS
puts "Creating submissions..."

#etienne make a submission request to louis which is accepted
Submission.create!(
    content: "Je suis tres interessé par votre randonnée",
    user_id: etienne.id.to_i,
    trip_id: trip.id.to_i,
    accepted: true
  )

Submission.create!(
    content: "Reste t-il des places?",
    user_id: alex.id.to_i,
    trip_id: trip.id.to_i,
    accepted: true
  )

36.times do
  user_id = (User.first.id..User.last.id).to_a.sample
  trip_id = (Trip.first.id..Trip.last.id).to_a.sample
  accepted = Submission.where(trip_id: trip_id).count < Trip.find(trip_id).seats

  Submission.create!(
    content: Faker::Hipster.paragraph,
    user_id: user_id,
    trip_id: trip_id,
    accepted: accepted
  )
end

14.times do
  Submission.create!(
    content: Faker::Hipster.paragraph,
    user_id: ((User.first.id)..(User.last.id)).to_a.sample,
    trip_id: ((Trip.first.id)..(Trip.last.id)).to_a.first(10).sample,
    accepted: nil
  )
end



# REVIEWS
puts "Creating reviews..."

#Etienne add a review to louis
Review.create!(
    content: "Mec super cool, super balade",
    rating: 5,
    sender_id: etienne.id.to_i,
    receiver_id: louis.id.to_i,
    trip_id: trip.id.to_i
  )

Review.create!(
    content: "J'ai adoré, merci!",
    rating: 4,
    sender_id: alex.id.to_i,
    receiver_id: louis.id.to_i,
    trip_id: trip.id.to_i
  )

Review.create!(
    content: "Homme très érudit, pas avare d'anedoctes sur ses amis comme ses ennemis.",
    rating: 5,
    sender_id: jack.id.to_i,
    receiver_id: francois.id.to_i,
    trip_id: trip_corse.id.to_i
  )

Review.create!(
    content: "Bon vivant et très très marrant malgré un fort accent belge",
    rating: 5,
    sender_id: vincent.id.to_i,
    receiver_id: benoit.id.to_i,
    trip_id: trip_corse.id.to_i
  )

10.times do
  Review.create!(
    content: Faker::Hipster.paragraph,
    rating: (1..5).to_a.sample,
    sender_id: ((User.first.id)..(User.last.id)).to_a.first(5).sample,
    receiver_id: ((User.first.id)..(User.last.id)).to_a.last(5).sample,
    trip_id: ((Trip.first.id)..(Trip.last.id)).to_a.sample
  )
end



# MESSAGES
puts "Creating messages..."

Message.create!(
    content: "Bonjour je suis super content d'avoir été accepté à votre rando",
    user_id: etienne.id,
    trip_id: trip.id
  )

Message.create!(
    content: "Bonjour à quelle heure se fait le depart",
    user_id: alex.id,
    trip_id: trip.id
  )

50.times do
  Message.create!(
    content: Faker::Hipster.paragraph,
    user_id: ((User.first.id)..(User.last.id)).to_a.sample,
    trip_id: ((Trip.first.id)..(Trip.last.id)).to_a.sample
  )
end


