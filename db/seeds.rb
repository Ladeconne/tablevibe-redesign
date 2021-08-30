# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p "Deleting every customers"
Customer.destroy_all

p "initiating picture_url"
picture_url = ["https://www.tablevibe.co/_nuxt/img/7a3beb8.png", "https://www.tablevibe.co/_nuxt/img/62a76c9.png", "https://www.tablevibe.co/_nuxt/img/ab0f2e1.png", "https://www.tablevibe.co/_nuxt/img/173a6af.png"]
logo_url = ["https://www.tablevibe.co/_nuxt/img/275f4d0.png", "https://www.tablevibe.co/_nuxt/img/e461574.png", "https://www.tablevibe.co/_nuxt/img/82dedeb.png", "https://www.tablevibe.co/_nuxt/img/f0a24a1.png"]

p "Creating 10 fake customers"
10.times do
  customer = Customer.new
  customer.name = Faker::Name.name
  customer.job_title = Faker::Job.title
  customer.company = Faker::Restaurant.name
  customer.testimonial = "I love this app, it really match my needs and I recommend it to every restaurant's owner"
  customer.picture_url = picture_url.sample
  customer.logo_url = logo_url.sample
  customer.save!
end
p "10 fake customers created"
