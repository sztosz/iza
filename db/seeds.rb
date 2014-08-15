# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'SETTING UP DEFAULT USER LOGIN'
admin = Admin.create! :email => 'izabela.chad@gmail.com', :password => 'test', :password_confirmation => 'test', :name => 'Izabela', :surname => 'Chadryś-Nowak'
puts 'New user created: ' << admin.email

puts 'SETTING UP TEST CATEGORIES'
category1 = Category.create! :name => 'Test category 1'
category2 = Category.create! :name => 'Test category 2'
category3 = Category.create! :name => 'Test category 3'
puts 'Categories created'

puts 'SETTING UP TEST NEWS'
10.times do
  news = Story.create! :title => 'TEST TITLE', :content => 'Test content ' * 20, :abstract => 'Test abstract ' * 3, :category => Category.find(1 + Random.rand(2)), :admin => Admin.find(1)
  puts 'Test Story created: ' << news.title
end
