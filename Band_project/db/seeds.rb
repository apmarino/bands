# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Event.delete_all
Band.delete_all
Venue.delete_all


venue1 = Venue.create({name:"House of Yes", city:"New York", state:"NY", family_friendly:false})
venue2 = Venue.create({name:"Barclay Center", city:"New York", state:"NY", family_friendly:false})
venue3 = Venue.create({name:"Jake's Backyard BBQ", city:"New York", state:"NY", family_friendly:false})


band1 = Band.create({name:"Objects", genre:"rock", explicit_lyrics:false, venue_id: venue1.id})
band2 = Band.create({name:"Pink Floyd", genre:"rock", explicit_lyrics:true, venue_id: venue2.id})
band3 = Band.create({name:"The Foundations", genre:"soul", explicit_lyrics:false, venue_id: venue1.id})
band4 = Band.create({name:"The Zombies", genre:"rock", explicit_lyrics:false, venue_id: venue2.id})
band5 = Band.create({name:"Bon Jovi", genre:"rock", explicit_lyrics:false, venue_id: venue3.id})


event1 = Event.create({date:"2015-8-27", alcohol_served: true, band_id: band1.id, venue_id: venue1.id})
event2 = Event.create({date:"2015-9-10", alcohol_served: true, band_id: band2.id, venue_id: venue2.id})
event3 = Event.create({date:"2015-9-14", alcohol_served: true, band_id: band3.id, venue_id: venue1.id})
event4 = Event.create({date:"2015-10-21", alcohol_served: true, band_id: band4.id, venue_id: venue2.id})
event4 = Event.create({date:"2015-10-21", alcohol_served: true, band_id: band5.id, venue_id: venue3.id})


