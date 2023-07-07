# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

snacks = Snack.create([
  {"id": 1 , "name": "Bagles"  , "price": 1.45, "quantity": 6 },
  {"id": 2 , "name": "Candy"   , "price": 2   , "quantity": 0 },
  {"id": 3 , "name": "Soda"    , "price": 1   , "quantity": 32},
  {"id": 4 , "name": "Gummies" , "price": 2.5 , "quantity": 39},
  {"id": 5 , "name": "Crackers", "price": 1.5 , "quantity": 17},
  {"id": 6 , "name": "Popcorn" , "price": 0.75, "quantity": 3 },
  {"id": 7 , "name": "Toy"     , "price": 0.75, "quantity": 0 },
  {"id": 8 , "name": "Pretzels", "price": 1   , "quantity": 18},
  {"id": 9 , "name": "Gum"     , "price": 0.15, "quantity": 11},
  {"id": 10, "name": "Coke"    , "price": 1   , "quantity": 31},
  {"id": 11, "name": "Soup"    , "price": 1.75, "quantity": 4 },
  {"id": 12, "name": "Ramen"   , "price": 1.75, "quantity": 5 }
])

cash = Cash.create([
  {"id": 1, "name": "$5.00 bill", "quantity": 1, "value": 5   },
  {"id": 2, "name": "$1.00 bill", "quantity": 2, "value": 1   },
  {"id": 3, "name": "quarter"   , "quantity": 3, "value": 0.25},
  {"id": 4, "name": "dime"      , "quantity": 4, "value": 0.1 },
  {"id": 5, "name": "nickel"    , "quantity": 5, "value": 0.05}
])