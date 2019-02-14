# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

barack = User.create(name: "Barack", email: "obama@usa.com", password: "yeswecan")
abe = User.create(name: "Lincoln", email: "abe@usa.com", password: "ogprez")
mike = User.create(name: "mike", email: "mike@gmail.com", password: "doperman")

preamble = Word.create(name: "preamble")
indigo = Word.create(name: "indigo")

historic = Tag.create(name: "historic", user: abe)
color = Tag.create(name: "color", user: barack)

alink = Link.create(user: abe, word: preamble, tag: historic)
blink = Link.create(user: barack, word: indigo, tag: color)

Vote.create(user: barack, link: alink)
Vote.create(user: abe, link: blink)
