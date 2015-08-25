# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Venue.delete_all
Even.delete_all
Band.delete_all

venue = Venue.create({name:"House of Yes", city:"New York", state:"NJ", family_friendly:false})

event = Event.create({date:"8/27/2015", alcohol_served: true, venue_id:1, band_id:1})

band = Band.create({name:"Objects", genre:"rock", explicit_lyrics:false, venue_id:1})

