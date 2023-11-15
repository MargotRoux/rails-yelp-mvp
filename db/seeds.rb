# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

restaurants = [
  {
    name:"Chez Kim",
    adress:"1 rue des champignons",
    phone_number:0601010101,
    category:"chinese"
  },
  { name:"Trattoria",
    adress:"2 rue des bahutiers",
    phone_number:0602020202,
    category:"italian"
  },
  { name:"Okaido",
    adress:"3 chemin des maisons",
    phone_number:0603030303,
    category:"japanese"
  },
  { name:"Chez Jean",
    adress:"4 rue Dombasle",
    phone_number:0604040404,
    category:"french"
  },
  { name:"Frites Belges",
    adress:"5 rue des chenilles",
    phone_number:0605050505,
    category:"belgian"
  },
]

# restaurants.each do |restaurant|
#   restaurants.create!(restaurant)
# end

restaurants.each do |restaurant|
  restaurant = Restaurant.create!(restaurant)
end
