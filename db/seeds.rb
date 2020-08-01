# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
a = User.create(email:'dulce@woof.com', password:'123456')
b = User.create(email:'matty@woof.com', password:'123456')
c = User.create(email:'bea@woof.com', password:'123456')

w = Palette.create(color_palette:["rgb(128, 242, 121)", "rgb(121, 242, 239)", "rgb(144, 242, 121)", "rgb(242, 121, 165)", "rgb(121, 153, 242)"])
x = Palette.create(color_palette:["rgb(242, 221, 121)", "rgb(121, 203, 242)", "rgb(242, 121, 179)", "rgb(218, 121, 242)", "rgb(188, 242, 121)"])
y = Palette.create(color_palette:["rgb(242, 121, 207)", "rgb(121, 242, 142)", "rgb(121, 242, 194)", "rgb(242, 194, 121)", "rgb(242, 164, 121)"])
z = Palette.create(color_palette:["rgb(121, 149, 242)", "rgb(121, 166, 242)", "rgb(242, 121, 239)", "rgb(134, 121, 242)", "rgb(185, 242, 121)"])

Favorite.create(palette_id: w.id, user_id: a.id)
Favorite.create(palette_id: y.id, user_id: a.id)
Favorite.create(palette_id: w.id, user_id: b.id)
Favorite.create(palette_id: y.id, user_id: b.id)
Favorite.create(palette_id: z.id, user_id: b.id)
Favorite.create(palette_id: x.id, user_id: b.id)