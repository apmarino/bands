# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Venue.delete_all
Band.delete_all
Event.delete_all

venue = Venue.create({name:"House of Yes", city:"New York", state:"NY", family_friendly:false})

band = Band.create({name:"Objects", genre:"rock", explicit_lyrics:false, venue_id: venue.id})

event = Event.create({date:"8/27/2015", alcohol_served: true, band_id: band.id, venue_id: venue.id})


