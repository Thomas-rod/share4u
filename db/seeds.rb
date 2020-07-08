# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Hello human, i will do something today. Do you want to know what ? "
puts "Hehehehe I'm gonna $**$$$*$$* seeding boy."

##-----------------------------------------------------------------------------------------------##
##-----------------------------------------------------------------------------------------------##
##-----------------------------------------------------------------------------------------------##

puts "Well let's begin with our first operation, CLEANING THE DB."
User.destroy_all
puts "All users have been destroyed"
Profile.destroy_all
puts "All profiles have been destroyed"
Magnet.destroy_all
puts "All magnets have been destroyed"
Network.destroy_all
puts "All networks have been destroyed"
Social.destroy_all
puts "All socials have been destroyed"
puts "Human, it's done. I destroy everything."


##-----------------------------------------------------------------------------------------------##
##-----------------------------------------------------------------------------------------------##
##-----------------------------------------------------------------------------------------------##

puts "Ok, now second operation, CREATING OUR DB."

puts "User on creation"

te = User.create!(email: "admin1@gmail.com", password: "admin1@gmail.com")
tr = User.create!(email: "admin2@gmail.com", password: "admin2@gmail.com")
puts "Well done human, #{User.count} users have been created."


puts "Profils on creation."
Profile.create!(first_name: "Thomas", last_name: "Eude", user: te)
Profile.create!(first_name: "Thomas", last_name: "Rodier", user: tr)
puts "Well done human, #{Profile.count} profile have been created."


puts "Magnets on creation."

puts "Well done human, #{Magnet.count} magnet have been created."


puts "Netowrk on creation."

puts "Well done human, #{Network.count} networks have been created."


puts "Socials on creation."
instagram = Social.create!(name: "instagram", url_desktop_begin:"placeholder", url_mobile_begin: "placeholder_two", kind: "username")
facebook = Social.create!(name: "facebook", url_desktop_begin:"placeholder", url_mobile_begin: "placeholder_two", kind: "username")
snapchat = Social.create!(name: "snapchat", url_desktop_begin:"placeholder", url_mobile_begin: "placeholder_two", kind: "username")
tiktok = Social.create!(name: "tiktok", url_desktop_begin:"placeholder", url_mobile_begin: "placeholder_two", kind: "username")
twitter = Social.create!(name: "twitter", url_desktop_begin:"placeholder", url_mobile_begin: "placeholder_two", kind: "username")
linkedin = Social.create!(name: "linkedin", url_desktop_begin:"placeholder", url_mobile_begin: "placeholder_two", kind: "username")
website = Social.create!(name: "site", url_desktop_begin:"placeholder", url_mobile_begin: "placeholder_two", kind: "url")
text = Social.create!(name: "text", url_desktop_begin:"placeholder", url_mobile_begin: "placeholder_two", kind: "numéro")
email = Social.create!(name: "email", url_desktop_begin:"placeholder", url_mobile_begin: "placeholder_two", kind: "email")
youtube = Social.create!(name: "youtube", url_desktop_begin:"placeholder", url_mobile_begin: "placeholder_two", kind: "username")
soundcloud = Social.create!(name: "soundcloud", url_desktop_begin:"placeholder", url_mobile_begin: "placeholder_two", kind: "username")
spotify = Social.create!(name: "spotify", url_desktop_begin:"placeholder", url_mobile_begin: "placeholder_two", kind: "username")
twitch = Social.create!(name: "twitch", url_desktop_begin:"placeholder", url_mobile_begin: "placeholder_two", kind: "username")
whatsapp = Social.create!(name: "whatsapp", url_desktop_begin:"placeholder", url_mobile_begin: "placeholder_two", kind: "numéro")
lien = Social.create!(name: "lien", url_desktop_begin:"placeholder", url_mobile_begin: "placeholder_two", kind: "lien")

puts "Well done human, #{Social.count} socials have been created."

##-----------------------------------------------------------------------------------------------##
##-----------------------------------------------------------------------------------------------##
##-----------------------------------------------------------------------------------------------##

puts "Human, my work here is done. It's have been a pleasure .. son of ... So ciao !"
