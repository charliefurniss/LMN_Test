# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


e1 = Email.create!("Address":"barney@lostmy.name","EmailType":"Shipment","Event":"send","Timestamp": 1432820696)

e2 = Email.create!("Address":"tom@lostmy.name","EmailType":"UserConfirmation","Event":"click","Timestamp": 1432820702)

e3 = Email.create!("Address":"vitor@lostmy.name","EmailType":"Shipment","Event":"open","Timestamp": 1432820704)