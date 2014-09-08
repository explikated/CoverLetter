# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
#Create Pieces
a = Piece.create(name:"The Box", brand:"RocksBox", box:1, photo_path:"8.jpg")
b = Piece.create(name:"Tribal Necklace", brand:"Jules Smith", box:20, photo_path:"1.jpg")
c = Piece.create(name:"Raw Stone Pendant Necklace", brand:"Charlene K", box:8, photo_path:"5.jpg")
d = Piece.create(name:"Congo Line Necklace in Fuschia", brand:"Urban Gem", box:17, photo_path:"2.jpg")
e = Piece.create(name:"Edgy Silver Wire Cuff", brand:"Urban Gem", box:5, photo_path:"6.jpg")
f = Piece.create(name:"Wire Wrapped Raw Stone Necklace", brand:"Robyn Rhodes", box:4, photo_path:"7.jpg")
#
#Add stories to Pieces
a.story = "I fell in love with RockBox the moment I opened my first box. The beautiful pink ribbon, the excitement of taking each piece out of its bag, RocksBox box made me feel special. As a young woman in a new city just starting my first real job, my life was a little bit stressful. What a joy to get a box full of goodies every month!"
a.save
b.story  = "Three years ago, I never would have bought a necklace like this. I’ve always liked the idea of statement jewelry but I never felt comfortable committing to a piece. I didn’t want to buy it if I wasn’t ever going to wear it. Enter RocksBox. Now I keep the statement necklaces that I have to convince myself *not* to wear four times a week, and send back the ones that don’t really fit in my wardrobe, even if they are beautiful.".force_encoding('UTF-8')
b.save
c.story = "From a very young age, I loved to play dress up. With a simple wardrobe change, I can step into any character I want, and accessories are the items that really land the look. This outfit got a bohemian twist from the necklace and bracelet in this set, but the next week, it could have a punk vibe with a piece in the next set. My rotating jewelry box makes even a basic outfit more fun."
c.save
d.story = "One of my RocksBox pieces turned out to be a real life saver. When I gave a talk at SharePoint Conference this year, the A/V guy was having trouble attaching the mic to my blouse. Chunky necklace to the rescue! He clipped the mic to my necklace instead. From now on I’ll remember to wear either a blazer or a sturdy necklace when lapel mics cross my path."
d.save
e.story = "I have this friend who is also a RocksBox member, and pretty much every time I see her, we go through the same exchange: <br> Oooh! I like your bracelet. RocksBox? <br> You know it. I like your necklace. RocksBox? <br> Heck yes! <br> I didn’t expect that becoming a RocksBox member would make me feel like I’m part of an elite secret society, complete with member greeting rituals."
e.save
f.story = "Of every piece I’ve ever received from RocksBox, this one is my favorite. It’s interesting, but not too loud. I can wear it with almost anything. Each time I wear it, it inspires a compliment or two, which certainly doesn’t hurt. Somewhere along the line, I decided it was my good luck charm. Isn’t it funny how quickly we come to cherish certain things? Thanks for the fun and the great memories, RocksBox! I hope we share many more together."
f.save