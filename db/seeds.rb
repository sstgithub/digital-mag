# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Photo.create("photo_name"=>"Turner Field Outside", "place_id"=>1, "image"=>"/assets/images/TurnerFieldOutside.png")
Photo.create("photo_name"=>"Turner Field Aerial", "place_id"=>1, "image"=>"assets/images/TurnerFieldAerial.png")
Photo.create("photo_name"=>"Georgia Aquarium Fishtank", "place_id"=>2, "image"=>"assets/images/GeorgiaAquariumFishtank.png")
Place.create("name"=>"Turner Field", "location_id"=>1, "latitude"=>33.73481, "longitude"=>-84.38997)
Place.create("name"=>"Georgia Aquarium", "location_id"=>1, "latitude"=>33.76338, "longitude"=>-84.3951)
Location.create("city"=>"Atlanta", "state"=>"GA", "country"=>"USA")