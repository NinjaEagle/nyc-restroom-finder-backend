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
# utilizing http://m3.mappler.net/nyrestroom/ to pick restroom seed data and 
# https://freetoursbyfoot.com/finding-a-public-restroom-in-new-york-city/

# 195 Cadman Plaza W, Brooklyn, NY 11201
Restroom1 = Restroom.create(name:'Cadman Plaza & Brooklyn War Memorial', latitude:"40.698432", longitude:"-73.990667", wheelchair_accessible: "Nope", restroom_type: "public", address: "195 Cadman Plaza W, Brooklyn, NY 11201", start_time:"6 AM", end_time:"1 AM")


# 25 Jay St, Brooklyn, NY 11201
Restroom2= Restroom.create(name:'Brooklyn Roasting Company', latitude:"40.704231", longitude:"-73.986237", wheelchair_accessible: "Yeah", restroom_type: "coffee shop", address:"25 Jay St, Brooklyn, NY 11201", start_time:"7 AM", end_time:"7 PM")

# 301 Park Avenue, NY Waldorf Astoria
Restroom3= Restroom.create(name:'Waldorf Astoria', latitude:"40.756502", longitude:"-73.973362", wheelchair_accessible: "No", restroom_type: "hotel", address:" 301 Park Avenue, NY Waldorf Astoria", start_time:"12 AM", end_time:"12 AM")
# Marriott Marquis-1535 Broadway
Restroom4= Restroom.create(name:'Marriott Marquis', latitude:"40.758614", longitude:"-73.986205", wheelchair_accessible: "Yeah", restroom_type: "hotel", address:"1535 Broadway", start_time:"12 AM", end_time:"12 AM")
# 42 St Bryant Park Bathroom
Restroom5= Restroom.create(name:'Bryant Park Restrooms', latitude:"40.753613", longitude:"-73.983289", wheelchair_accessible: "Yeah", restroom_type: "park", address: "42 St Bryant Park  New York, NY 10018", start_time:"7 AM", end_time: "12 AM")
# Macy's 34th st 151 W 34th St, New York, NY 10001
Restroom6= Restroom.create(name:'Macys 34th St Department Store', latitude:"40.750059", longitude:"-73.989718", wheelchair_accessible: "Yeah", restroom_type: "department store", address:"151 W 34th St, New York, NY 10001", start_time:"10 AM", end_time:"10 PM")

#Bookstore Barnes and Nobles 33 E 17th St, New York, NY 10003
Restroom7= Restroom.create(name:'Barnes and Nobles', latitude:"40.737148", longitude:"-73.989403", wheelchair_accessible: "Yeah", restroom_type: "book store", address:"33 E 17th St, New York, NY 10003", start_time:"9 AM", end_time: "10 PM")
# Burger King 417-21 Fulton St, Brooklyn, NY 11201
Restroom8= Restroom.create(name:'Burger King', latitude:"40.692088", longitude:"-73.988931", wheelchair_accessible: "Yeah", restroom_type: "fast food", address:"417-21 Fulton St, Brooklyn, NY 11201", start_time:"6 AM", end_time: "11 PM")
# WeWork Dumbo 81 Prospect St Brooklyn, NY 11201
Restroom9= Restroom.create(name:'WeWork Dumbo', latitude:"40.700772", longitude:"-73.987410", wheelchair_accessible: "Yeah", restroom_type: "other", address:"81 Prospect St Brooklyn, NY 11201", start_time:"9 AM", end_time: "6 PM")
