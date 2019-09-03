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
require "rest-client"
require 'json'
######users######
User1 = User.create(username: 'blacksheep', password: '123')

######restrooms######
# utilizing http://m3.mappler.net/nyrestroom/

# 195 Cadman Plaza W, Brooklyn, NY 11201
Restroom1 = Restroom.create(name:'Cadman Plaza & Brooklyn War Memorial', latitude:"40.698432", longitude:"-73.990667", wheelchair_accessible: "no", restroom_type: "Public")


# 25 Jay St, Brooklyn, NY 11201
Restroom2= Restroom.create(name:'Brooklyn Roasting Company', latitude:"40.704231", longitude:"-73.986237", wheelchair_accessible: "yes", restroom_type: "coffee shop")

# 301 Park Avenue, NY Waldorf Astoria
Restroom3= Restroom.create(name:'Waldorf Astoria', latitude:"40.756502", longitude:"-73.973362", wheelchair_accessible: "yes", restroom_type: "hotel")
# Marriott Marquis-1535 Broadway
Restroom4= Restroom.create(name:'Marriott Marquis', latitude:"40.758614", longitude:"-73.986205", wheelchair_accessible: "yes", restroom_type: "hotel")
# 42 St Bryant Park Bathroom
Restroom5= Restroom.create(name:'Bryant Park Restrooms', latitude:"40.753613", longitude:"-73.983289", wheelchair_accessible: "yes", restroom_type: "park")
# Macy's 34th st 151 W 34th St, New York, NY 10001
Restroom6= Restroom.create(name:'Macys 34th St', latitude:"40.750059", longitude:"-73.989718", wheelchair_accessible: "yes", restroom_type: "department store")
