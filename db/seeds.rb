require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#movie
puts "Destroying the previous database"
List.destroy_all
Movie.destroy_all
puts "Adding 10 movies"

Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
Movie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)
Movie.create(title: "Wonder Woman", overview: "An Amazon princess comes to the world of Man in the grips of the First World War to confront the forces of evil and bring an end to human conflict.", poster_url: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/imekS7f1OuHyUP2LAiTEM0zBzUz.jpg", rating: 6.9)
Movie.create(title: "Batman Begins", overview: "Driven by tragedy, billionaire Bruce Wayne dedicates his life to uncovering and defeating the corruption that plagues his home, Gotham City. Unable to work within the system, he instead creates a new identity, a symbol of fear for the criminal underworld - The Batman.", poster_url: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/8RW2runSEc34IwKN2D1aPcJd2UL.jpg", rating: 9.7)
Movie.create(title: "Gladiator", overview: "In the year 180, the death of emperor Marcus Aurelius throws the Roman Empire into chaos. Maximus is one of the Roman army's most capable and trusted generals and a key advisor to the emperor. As Marcus' devious son Commodus ascends to the throne, Maximus is set to be executed. He escapes, but is captured by slave traders. Renamed Spaniard and forced to become a gladiator, Maximus must battle to the death with other men for the amusement of paying audiences.", poster_url: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/rotQFyaeNQivUJOm3J3M7YqPNMx.jpg", rating: 8.2)
Movie.create(title: "Star Wars", overview: "Princess Leia is captured and held hostage by the evil Imperial forces in their effort to take over the galactic Empire. Venturesome Luke Skywalker and dashing captain Han Solo team together with the loveable robot duo R2-D2 and C-3PO to rescue the beautiful princess and restore peace and justice in the Empire.", poster_url: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/6FfCtAuVAW8XJjZ7eWeLibRLWTw.jpg", rating: 8.5)

puts "Completed 10 movies"
puts "creating 2 lists"
puts "opening the 2 urls"
photo1 = URI.open('https://images.pexels.com/photos/1387577/pexels-photo-1387577.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
photo2 = URI.open('https://images.pexels.com/photos/2145/sea-sunset-beach-couple.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')

list1 = List.new(name: 'My favourite movies')
list2 = List.new(name: 'Worth rewatching')

list1.photo.attach(io: photo1, filename: 'list1.jpg', content_type: 'image/jpeg')
list2.photo.attach(io: photo2, filename: 'list2.jpg', content_type: 'image/jpeg')

list1.save
list2.save
