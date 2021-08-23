# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p "Deleting every customers"
Customer.destroy_all

p "Creating 10 fake customers"
10.times do
  customer = Customer.new
  customer.name = Faker::Name.name
  customer.job_title = Faker::Job.title
  customer.company = Faker::Restaurant.name
  customer.testimonial = "I love this app, it really match my needs and I recommend it to every restaurant's owner"
  customer.save!
end
p "10 fake customers created"
