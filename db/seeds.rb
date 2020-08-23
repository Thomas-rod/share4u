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

# puts "Well let's begin with our first operation, CLEANING THE DB."
# User.destroy_all
# puts "All users have been destroyed"
# Profile.destroy_all
# puts "All profiles have been destroyed"
# Magnet.destroy_all
# puts "All magnets have been destroyed"
# MagnetProfile.destroy_all
# puts "All magnets have been destroyed"
# Network.destroy_all
# puts "All networks have been destroyed"
# Social.destroy_all
# puts "All socials have been destroyed"
# puts "Human, it's done. I destroy everything."


# ##-----------------------------------------------------------------------------------------------##
# ##-----------------------------------------------------------------------------------------------##
# ##-----------------------------------------------------------------------------------------------##

# puts "Ok, now second operation, CREATING OUR DB."

# puts "User on creation"

# te = User.create!(email: "admin1@gmail.com", password: "admin1@gmail.com")
# tr = User.create!(email: "admin2@gmail.com", password: "admin2@gmail.com")
# puts "Well done human, #{User.count} users have been created."


# puts "Profils on creation."
# one_profile = Profile.create!(first_name: "Thomas", last_name: "Eude", user: te, magnet_bought: false)
# two_profile = Profile.create!(first_name: "Thomas", last_name: "Rodier", user: tr, magnet_bought: false)
# puts "Well done human, #{Profile.count} profile have been created."


# puts "Socials on creation."
# instagram = Social.create!(name: "instagram", url_desktop_begin:"https://www.instagram.com/", url_mobile_begin: "placeholder_two", kind: "username")
# facebook = Social.create!(name: "facebook", url_desktop_begin:"https://www.facebook.com/", url_mobile_begin: "placeholder_two", kind: "link")
# snapchat = Social.create!(name: "snapchat", url_desktop_begin:"https://www.snapchat.com/add/", url_mobile_begin: "https://www.snapchat.com/add/", kind: "username")
# tiktok = Social.create!(name: "tiktok", url_desktop_begin:"https://www.tiktok.com/", url_mobile_begin: "placeholder_two", kind: "username")
# twitter = Social.create!(name: "twitter", url_desktop_begin:"https://twitter.com/", url_mobile_begin: "placeholder_two", kind: "username")
# linkedin = Social.create!(name: "linkedin", url_desktop_begin:"https://www.linkedin.com/in/", url_mobile_begin: "placeholder_two", kind: "link")
# website = Social.create!(name: "website", url_desktop_begin:"", url_mobile_begin: "placeholder_two", kind: "link")
# text = Social.create!(name: "text", url_desktop_begin:"", url_mobile_begin: "placeholder_two", kind: "username")
# email = Social.create!(name: "email", url_desktop_begin:"", url_mobile_begin: "placeholder_two", kind: "username")
# contact = Social.create!(name: "contact", url_desktop_begin:"", url_mobile_begin: "placeholder_two", kind: "username")
# youtube = Social.create!(name: "youtube", url_desktop_begin:"https://www.youtube.com/c/", url_mobile_begin: "placeholder_two", kind: "link")
# soundcloud = Social.create!(name: "soundcloud", url_desktop_begin:"https://soundcloud.com/", url_mobile_begin: "placeholder_two", kind: "username")
# spotify = Social.create!(name: "spotify", url_desktop_begin:"https://open.spotify.com/user/", url_mobile_begin: "placeholder_two", kind: "username")
# twitch = Social.create!(name: "twitch", url_desktop_begin:"https://www.twitch.tv/", url_mobile_begin: "placeholder_two", kind: "username")
# whatsapp = Social.create!(name: "whatsapp", url_desktop_begin:"https://api.whatsapp.com/send?phone=33", url_mobile_begin: "placeholder_two", kind: "username")
# lien = Social.create!(name: "lien", url_desktop_begin:"", url_mobile_begin: "placeholder_two", kind: "link")

# puts "Well done human, #{Social.count} socials have been created."

# ##-----------------------------------------------------------------------------------------------##
# ##-----------------------------------------------------------------------------------------------##
# ##-----------------------------------------------------------------------------------------------##



# puts "Magnets on creation."
# one_magnet = Magnet.create!(url: "localhost:3000/magnet_profiles/1?5918615y5qs328o7" ,sku: "test-1")
# two_magnet = Magnet.create!(url: "localhost:3000/magnet_profiles/2?c81txgsfxhyh435m" ,sku: "test-2")
# third_magnet = Magnet.create!(url: "localhost:3000/magnet_profiles/3?xgssq8354o2qv5ab" ,sku: "test-3")
# puts "Well done human, #{Magnet.count} magnets have been created."


# puts "Magnet_profiles on creation."

# puts "Well done human, #{MagnetProfile.count} magnet_profiles have been created."
# ##-----------------------------------------------------------------------------------------------##
# ##-----------------------------------------------------------------------------------------------##
# ##-----------------------------------------------------------------------------------------------##

# puts "Networks on creation"

# instagram_netwrok_tr = Network.create!(username: "thomrodier", profile: two_profile, social: instagram)
# facebook_netwrok_tr = Network.create!(username: "thomas.rodier.9", profile: two_profile, social: facebook)
# email_netwrok_tr = Network.create!(username: "hi@thomasrodier.co", profile: two_profile, social: email)
# twitter_netwrok_tr = Network.create!(username: "rodiert17", profile: two_profile, social: twitter)
# linkedin_netwrok_tr = Network.create!(username: "thomas-rodier", profile: two_profile, social: linkedin)
# tiktok_netwrok_tr = Network.create!(username: "@thomasrdr", profile: two_profile, social: tiktok)
# website_netwrok_tr = Network.create!(username: "https://www.thomasrodier.co", profile: two_profile, social: website)
# # text_netwrok_tr = Network.create!(username: "0668489169", profile: two_profile, social: text)

# puts "Well done human, #{Network.count} networks have been created."
#-----------------------------------------------------------------------------------------------##
#-----------------------------------------------------------------------------------------------##
#-----------------------------------------------------------------------------------------------##


# ##--------------------------------------------------------------------------##
# ##---------------##  CREATION OF MAGNET BOUGHT ##---------------------------##
# ##---------------##  DO NOT UNCOMMENT LINES BELOW ##------------------------##
# ##--------------------------------------------------------------------------##


# ##--------------------------------------------------------------------##
# ##---------------## MAGNET CREATION FIRST TRY ##----------------------##
# ##--------------------------------------------------------------------##

# Magnet.create(url: 'www.joombo.co/magnet_profiles/4?4bvw3n4v5358dez2')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/5?86o6q3mjs43x791b')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/6?p26phtas2l2msp3e')


# ##--------------------------------------------------------------------##
# ##---------------## MAGNET CREATION 20 JULY 2020 ##-------------------##
# ##--------------------------------------------------------------------##

# Magnet.create(url: 'www.joombo.co/magnet_profiles/7?5918615y5qs328o7', sku: 'joombo-white-4')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/8?c81txgsfxhyh435m', sku: 'joombo-white-5')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/9?xgssq8354o2qv5ab', sku: 'joombo-white-6')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/10?s86zzxeaob22w659', sku: 'joombo-white-7')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/11?88zv4y3c2sz7in12', sku: 'joombo-white-8')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/12?f1w2s51kq7m4259a', sku: 'joombo-white-9')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/13?k898vn296tmh9355', sku: 'joombo-white-10')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/14?fh79gus37ahue3h6', sku: 'joombo-white-11')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/15?719ds6o2fp71t679', sku: 'joombo-white-12')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/16?323a3m87d2pap72z', sku: 'joombo-white-13')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/17?qc86h382dsy31eel', sku: 'joombo-white-14')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/18?v46vg8d651146yeg', sku: 'joombo-white-15')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/19?732z726f24wy1c39', sku: 'joombo-white-16')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/20?glp9296nb93v4s7g', sku: 'joombo-white-17')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/21?nxk6byb2w3gs7ssa', sku: 'joombo-white-18')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/22?ig29z81685x1chys', sku: 'joombo-white-19')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/23?6y66e93npzoekmik', sku: 'joombo-white-20')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/24?84b7912hp26kvh5s', sku: 'joombo-white-21')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/25?tt48j9jfxt282x67', sku: 'joombo-white-22')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/26?8m83gqvweyq4nw7u', sku: 'joombo-white-23')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/27?s89avaoqm38y39z1', sku: 'joombo-white-24')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/28?ht14fdxu3d44d3k8', sku: 'joombo-white-25')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/29?3za558218x255f7l', sku: 'joombo-white-26')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/30?qoi86e672145797e', sku: 'joombo-white-27')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/31?54su2p3669qxia68', sku: 'joombo-white-28')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/32?w5u9q9e86aa3ilba', sku: 'joombo-white-29')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/33?79r98j5f765g17c6', sku: 'joombo-white-30')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/34?l12o35q97svyf2eu', sku: 'joombo-white-31')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/35?55wxa7wn34815b6m', sku: 'joombo-white-32')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/36?j8f454hqc488nj75', sku: 'joombo-white-33')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/37?9hk22iloq7536298', sku: 'joombo-white-34')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/38?ge4g39mu4t8n9kr6', sku: 'joombo-white-35')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/39?99j3c4oe426h542x', sku: 'joombo-white-36')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/40?6pw4p46m49o29m18', sku: 'joombo-white-37')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/41?rqtj1x598km1smdv', sku: 'joombo-white-38')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/42?5v271ul658vg42sf', sku: 'joombo-white-39')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/43?3q4y2jj582qzb19c', sku: 'joombo-white-40')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/44?hmxqoy7u99lip515', sku: 'joombo-white-41')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/45?n785232u3a4cdq71', sku: 'joombo-white-42')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/46?62z724ie3wj6m7z5', sku: 'joombo-white-43')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/47?7oy73lsn995335l1', sku: 'joombo-white-44')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/48?84h1vubau125b5vl', sku: 'joombo-white-45')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/49?oh815k6x833y5p44', sku: 'joombo-white-46')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/50?6og1z6y139ogl71h', sku: 'joombo-white-47')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/51?438n9nmtb7neatuv', sku: 'joombo-white-48')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/52?65q3r42sxet3jpyj', sku: 'joombo-white-49')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/53?6vu9s75ao6z2v399', sku: 'joombo-white-50')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/54?583hpv61u541r36g', sku: 'joombo-white-51')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/55?9z29l9x2rn8m473v', sku: 'joombo-white-52')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/56?cnoo922paoc41931', sku: 'joombo-white-53')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/57?53kk59rzpjw59i54', sku: 'joombo-white-54')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/58?v76k699ib99nr1rh', sku: 'joombo-white-55')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/59?568914w4r83r2at8', sku: 'joombo-white-56')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/60?7c8yrjs71wka1xvu', sku: 'joombo-white-57')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/61?9o3g594gufo64f7g', sku: 'joombo-white-58')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/62?4t749jx7pn5fsx2c', sku: 'joombo-white-59')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/63?z36s739mks89r69n', sku: 'joombo-white-60')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/64?guy2f735t7bx3eru', sku: 'joombo-white-61')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/65?l53341499rnmtc57', sku: 'joombo-white-62')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/66?ae3irgq6s4q1a228', sku: 'joombo-white-63')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/67?2ga46p43heh9wp9p', sku: 'joombo-white-64')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/68?n5y1nsl1t2hx5e72', sku: 'joombo-white-65')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/69?eqz3b2mtu82z97u6', sku: 'joombo-white-66')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/70?bi977e1hu34ukq18', sku: 'joombo-white-67')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/71?fto131zjl2989wvn', sku: 'joombo-white-68')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/72?91353w943zrfetyr', sku: 'joombo-white-69')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/73?d6jo93b7t699hlfq', sku: 'joombo-white-70')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/74?ne2oy33yp165886c', sku: 'joombo-white-71')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/75?dbebi85au6v2nmjn', sku: 'joombo-white-72')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/76?q6wqup5612c56don', sku: 'joombo-white-73')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/77?zfi8w46qiqh169qu', sku: 'joombo-white-74')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/78?n9zmyd6b8wsj9qke', sku: 'joombo-white-75')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/79?ex85e9fwjs8sqrzr', sku: 'joombo-white-76')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/80?8uva717al62dcc3p', sku: 'joombo-white-77')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/81?7914qrkskp123ep2', sku: 'joombo-white-78')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/82?5ktt26xs99owm5h5', sku: 'joombo-white-79')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/83?7r38z5jnu244231q', sku: 'joombo-white-80')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/84?n92co62gtw244v6e', sku: 'joombo-white-81')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/85?fqcp34tq5kqczi2w', sku: 'joombo-white-82')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/86?35du2nu56oq516j5', sku: 'joombo-white-83')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/87?s115hypki1hta65n', sku: 'joombo-white-84')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/88?56v6g135gm9dczvn', sku: 'joombo-white-85')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/89?owbjo62u4qln3z47', sku: 'joombo-white-86')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/90?m3en268322k9xjrj', sku: 'joombo-white-87')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/91?x5ln8r9srf2y996e', sku: 'joombo-white-88')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/92?r831b1u2x4c7z8d3', sku: 'joombo-white-89')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/93?3a2w8t161v566sc8', sku: 'joombo-white-90')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/94?lz47et4zcd3w1yej', sku: 'joombo-white-91')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/95?462sb1i9n2d39f7e', sku: 'joombo-white-92')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/96?q6wu9s91s8dk9tz5', sku: 'joombo-white-93')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/97?ldv15ksj4t99eyx4', sku: 'joombo-white-94')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/98?2cc155chfc7wwv4p', sku: 'joombo-white-95')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/99?1x2ia6vi1eil38o3', sku: 'joombo-white-96')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/100?ociop43c71s8uwa1', sku: 'joombo-white-97')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/101?1vz7e7msd1flgk48', sku: 'joombo-white-98')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/102?555rpw883on56478', sku: 'joombo-white-99')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/103?42oj2nwfpb3oo39n', sku: 'joombo-white-100')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/104?v762ci849wfj7ay3', sku: 'joombo-black-101')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/105?2xw7m31wd4j7yy3o', sku: 'joombo-black-102')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/106?5k54g45o3s51b868', sku: 'joombo-black-103')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/107?68i5y219376ip2e5', sku: 'joombo-black-104')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/108?7n18o19rml4l9fy6', sku: 'joombo-black-105')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/109?q1lr76ok8bn95m49', sku: 'joombo-black-106')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/110?5w324l4b7894ruzl', sku: 'joombo-black-107')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/111?625gi8jbtk93ulla', sku: 'joombo-black-108')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/112?5h9c1bqn2984on96', sku: 'joombo-black-109')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/113?x35gpmebxily82q7', sku: 'joombo-black-110')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/114?7t5t379576k27joi', sku: 'joombo-black-111')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/115?1198p81mtbvadc1l', sku: 'joombo-black-112')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/116?36u4d335s26vu57e', sku: 'joombo-black-113')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/117?1m9fh2mnp3hb64dl', sku: 'joombo-black-114')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/118?8w3dyn32h5419a6c', sku: 'joombo-black-115')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/119?573923aa2w169o8b', sku: 'joombo-black-116')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/120?p6qb1x18owh831d5', sku: 'joombo-black-117')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/121?3w8k139xcy75d921', sku: 'joombo-black-118')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/122?up7626254kfnqsye', sku: 'joombo-black-119')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/123?csr8mwgx8d7n111g', sku: 'joombo-black-120')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/124?9a1w9w21t15l5z8f', sku: 'joombo-black-121')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/125?12778797w9f8bw2a', sku: 'joombo-black-122')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/126?a2d7kyk8qarw8818', sku: 'joombo-black-123')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/127?a1hq7lp2f6l81n9u', sku: 'joombo-black-124')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/128?7wde14c8a89bc449', sku: 'joombo-black-125')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/129?4e82w77tf5413gc6', sku: 'joombo-black-126')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/130?d5wy199f9y4t45vn', sku: 'joombo-black-127')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/131?76befqvxv9473662', sku: 'joombo-black-128')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/132?898kgsd38es5u73k', sku: 'joombo-black-129')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/133?j814v24wpt7sqc96', sku: 'joombo-black-130')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/134?qb35q9gz2cqdleoa', sku: 'joombo-black-131')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/135?1z116ep25562s55n', sku: 'joombo-black-132')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/136?79b4w9nu9825m1bc', sku: 'joombo-black-133')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/137?t96k238bej5t3462', sku: 'joombo-black-134')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/138?1w1jt9af6vf9vu92', sku: 'joombo-black-135')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/139?3q2ognuu871899sa', sku: 'joombo-black-136')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/140?kh774o72stz77vnp', sku: 'joombo-black-137')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/141?y8l4ei65255f8s85', sku: 'joombo-black-138')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/142?jn63m63yvl6rwm5u', sku: 'joombo-black-139')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/143?g6x11742yqxy4425', sku: 'joombo-black-140')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/144?7311213u1u8p1451', sku: 'joombo-black-141')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/145?1y3m8826f51itrbf', sku: 'joombo-black-142')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/146?1751eqpl9jqfw5ch', sku: 'joombo-black-143')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/147?kzpa58p56jo8w2d8', sku: 'joombo-black-144')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/148?bt7wt1896156qfc9', sku: 'joombo-black-145')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/149?j6lml9269b833j39', sku: 'joombo-black-146')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/150?ia92kqwj8v4u59zv', sku: 'joombo-black-147')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/151?y4co4g1qw7a882u3', sku: 'joombo-black-148')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/152?471y1v31t63e4518', sku: 'joombo-black-149')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/153?21m51654734f693l', sku: 'joombo-black-150')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/154?epkt57any8so5139', sku: 'joombo-black-151')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/155?mloa9d7os8759xg4', sku: 'joombo-black-152')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/156?zjh7wdt7ts1k5vm6', sku: 'joombo-black-153')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/157?97uj599tda756k8u', sku: 'joombo-black-154')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/158?2wno144gqz8v5q54', sku: 'joombo-black-155')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/159?93918h7255ja6874', sku: 'joombo-black-156')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/160?n762mi3g51tq87o5', sku: 'joombo-black-157')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/161?7627uhjfp17xl59u', sku: 'joombo-black-158')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/162?9c3ilzq14cdz15pv', sku: 'joombo-black-159')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/163?pbog5hk5451mckj3', sku: 'joombo-black-160')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/164?tc23dq86d15t1wsk', sku: 'joombo-black-161')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/165?89p3e79ky87qyey1', sku: 'joombo-black-162')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/166?i1r686bf73f83w8f', sku: 'joombo-black-163')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/167?x7t571b7r144c363', sku: 'joombo-black-164')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/168?f3rzl59w599fd313', sku: 'joombo-black-165')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/169?27j4ffi942zq45u1', sku: 'joombo-black-166')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/170?514v6w23349gtkhu', sku: 'joombo-black-167')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/171?8j2747b7uvtip118', sku: 'joombo-black-168')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/172?yr26c279o9q711ee', sku: 'joombo-black-169')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/173?49wa9x5539823296', sku: 'joombo-black-170')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/174?gnu42nnczmie1q41', sku: 'joombo-black-171')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/175?8z1xb7ynji66mn7f', sku: 'joombo-black-172')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/176?9823d23x368k9273', sku: 'joombo-black-173')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/177?jvk86n199912fif9', sku: 'joombo-black-174')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/178?7u1o9ji9t2emwk33', sku: 'joombo-black-175')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/179?6tu7wx289u7dm357', sku: 'joombo-black-176')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/180?u7236l1zg84924lo', sku: 'joombo-black-177')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/181?hlpo8idj7wahvksi', sku: 'joombo-black-178')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/182?1z66elw68un97yc5', sku: 'joombo-black-179')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/183?h76e3298549iu512', sku: 'joombo-black-180')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/184?tj3f36k6d43e99v5', sku: 'joombo-black-181')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/185?byn62g3682rbr43r', sku: 'joombo-black-182')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/186?h1v93e87953wky4s', sku: 'joombo-black-183')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/187?ny18u399g7pj1y65', sku: 'joombo-black-184')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/188?c3v4uot42c7rxd18', sku: 'joombo-black-185')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/189?97914c54qez4xo4c', sku: 'joombo-black-186')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/190?1coeof69h7e65672', sku: 'joombo-black-187')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/191?9gz7454er8o9pn2v', sku: 'joombo-black-188')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/192?mi76wu24g93f1h97', sku: 'joombo-black-189')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/193?khq694izm2t7g5i6', sku: 'joombo-black-190')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/194?936vq9t64qo82n2a', sku: 'joombo-black-191')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/195?wv882hz1g6ks6wm4', sku: 'joombo-black-192')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/196?18fv3y42913kogue', sku: 'joombo-black-193')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/197?2d926537tt2g7c68', sku: 'joombo-black-194')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/198?9j83px7w853n721r', sku: 'joombo-black-195')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/199?3ojwr5b5pq7h119g', sku: 'joombo-black-196')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/200?6y4dj248bj988m54', sku: 'joombo-black-197')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/201?l981cv3l6u1ylph3', sku: 'joombo-black-198')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/202?8pf82s4esbv6am75', sku: 'joombo-black-199')
# Magnet.create(url: 'www.joombo.co/magnet_profiles/203?47a2dx7sn793452r', sku: 'joombo-black-200')


## ------------------------------------------------------------------------------------------------##
##                             ADD HEADER / EXPLANATIONS TO SOCIALS                                ##
## ------------------------------------------------------------------------------------------------##

# instagram_social = Social.find_by(name: "instagram").update(header: "Ajoute ton pseudo Instagram", explanation: "Ouvre Instagram et rend toi sur ton profile. Ton username est tout en haut", kind: "username")
# facebook_social = Social.find_by(name: "facebook").update(header: "Ajoute le lien de ton profil Facebook", explanation: "Ouvre www.facebook.com et rend toi sur ton profile. Copie & colle le lien", kind: "link")
# snapchat_social = Social.find_by(name: "snapchat").update(header: "Ajoute ton pseudo Snapchat", explanation: "Ouvre Snapchat et rend toi sur ton profile. Ton username se trouve en dessous de ton pseudo (le deuxième nom en dessous du premier)", kind: "username")
# titok_social = Social.find_by(name: "tiktok").update(header: "Ajoute ton pseudo TikTok", explanation: "Ouvre Tiktok et rend toi sur ton profile. Ton username est sous ta photo de profil", kind: "username")
# twitter_social = Social.find_by(name: "twitter").update(header: "Ajoute ton pseudo twitter", explanation: "Ouvre Twitter et rend toi sur ton profile. Ton username se trouve en dessous de ton pseudo (le deuxième nom en dessous du premier)", kind: "username")
# linkedin_social = Social.find_by(name: "linkedin").update(header: "Ajoute le lien de ton profil Linkedin", explanation: "Ouvre www.linkedin.com et rend toi sur ton profile. Clique en haut à droite sur 'Modifier le profil public et l'URL'. Copie & Colle ton URL", kind: "link")
# website_social = Social.find_by(name: "website").update(header: "Ajoute le lien de ton site internet", explanation: "Ajoute l'URL de ton site internet", kind: "link")
# text_social = Social.find_by(name: "text").update(header: "Ajoute ton numéro de téléphone", explanation: "Tu te souviens de ton numéro ? Pas besoin des +33...", kind: "numéro")
# email_social = Social.find_by(name: "email").update(header: "Ajoute ton adresse mail", explanation: "Cela ouvrira un email avec ton mail en adresse de réception", kind: "email")
# contact_social = Social.find_by(name: "contact").update(header: "Ajoute ta fiche contact", explanation: "Envie de partager ton contact complet plus facilement ? Remplis simplement les champs que tu désires partager", kind: "username")
# youtube_social = Social.find_by(name: "youtube").update(header: "Ajoute le lien de ta chaîne Youtube", explanation: "Ouvre www.youtube.com et rend toi sur ta chaîne. Copie & colle le lien", kind: "link")
# soundcloud_social = Social.find_by(name: "soundcloud").update(header: "Ajoute ton pseudo Soundclound", explanation: "Ouvre Soundcloud et rend toi sur ton profil. Ton username se trouve sous ta photo de profil", kind: "username")
# spotify_social = Social.find_by(name: "spotify").update(header: "Ajoute ton pseudo Spotify", explanation: "Ouvre Spotify et rend toi sur la page Préférences puis Compte. Tu y trouveras ton nom d'utilisateur", kind: "username")
# twitch_social = Social.find_by(name: "twitch").update(header: "Ajoute ton pseudo Twitch", explanation: "Ouvre Twitch et rend toi ton profil. Tu y trouveras ton nom d'utilisateurà droite de ta photo de profil", kind: "username")
# whatsapp_social = Social.find_by(name: "whatsapp").update(header: "Ajoute ton numéro de téléphone", explanation: "Nous n'acceptons que les numéros français pour le moment.", kind: "numéro")
# lien_social = Social.find_by(name: "lien").update(header: "Ajoute un lien personnalisé", explanation: "Tu as envie d'ajouter un lien custom ? Fais-toi plaisir !", kind: "link")

puts "Human, my work here is done. It's have been a pleasure .. son of ... So ciao !"
