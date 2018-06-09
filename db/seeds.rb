# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.new(:name => "André", :email => "a@a.com", :password => "12341234", :phone => "567567567")
user.skip_confirmation!
user.save

user = User.new(:name => "Caminhoneiro Jonas", :email => "b@a.com", :password => "12341234", :phone => "098098098")
user.skip_confirmation!
user.save
