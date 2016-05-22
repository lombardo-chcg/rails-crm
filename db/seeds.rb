# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

50.times do
  Customer.create(name: Faker::Company.name, contact_info: Faker::Address.street_address)
end

200.times do
  @customer = Customer.find(rand( (Customer.first.id) .. (Customer.last.id) ))
  @customer.followups.create(comments: Faker::Lorem.sentence)
end
