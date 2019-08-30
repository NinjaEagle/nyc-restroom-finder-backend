# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Favorite.destroy_all
Restroom.destroy_all

######users######
User.create(username: 'blacksheep', age:'25', password: '123')

######restrooms######
# utilizing http://m3.mappler.net/nyrestroom/

# Restroom.create(name:'Cadman Plaza & Brooklyn War Memorial', l:"40.704231", longitude:"-73.986237")
# 195 Cadman Plaza W, Brooklyn, NY 11201

Restroom.create(name:'Brooklyn Roasting Company', latitude:"40.704231", longitude:"-73.986237", wheelchair_accessible: "true", restroom_type: "coffee shop")
# 25 Jay St, Brooklyn, NY 11201