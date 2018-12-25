# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

monologue1 = Monologue.create(scanFile: "",
character: "Macbeth",
genre: "Tragedy",
age: 30,
play: "Macbeth",
length: "1 minute",
script: "She should have died hereafter; There would have been a time for such a word. To-morrow, and to-morrow, and to-morrow, Creeps in this petty pace from day to day To the last syllable of recorded time, And all our yesterdays have lighted fools The way to dusty death. Out, out, brief candle! Life's but a walking shadow, a poor player That struts and frets his hour upon the stage And then is heard no more: it is a tale Told by an idiot, full of sound and fury, Signifying nothing.",
notes: "learn it better")

user1 = User.create(name: "Olivia", email: "odkasten@gmail.com", password: "password", username: "olivia")
um1 = UserMonologue.create(user_id: 1, monologue_id: 1)
