# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Effect.destroy_all
puts "Destroyed everything you touch"

effects = [
    { 
        name: 'Blinded',
        descr: 'A blinded creature can’t see and automatically fails any ability check that requires sight. Attack rolls against the creature have advantage, and the creature’s Attack rolls have disadvantage.',
        image: URI.open("https://i0.wp.com/halflinghobbies.com/wp-content/uploads/2020/10/blinded-condition.jpg?resize=640%2C427&ssl=1")
    }, 
    { 
        name: 'Charmed',
        descr: 'A charmed creature can’t Attack the charmer or target the charmer with harmful Abilities or magical Effects. The charmer has advantage on any ability check to interact socially with the creature.',
        image: URI.open("https://img1.etsystatic.com/064/0/7027574/il_fullxfull.777313271_s4e1.jpg")
    }, 
    { 
        name: 'Deafened',
        descr: 'A deafened creature can’t hear and automatically fails any ability check that requires hearing.',
        image: URI.open("https://www.holyart.com/blog/wp-content/uploads/sites/10/2022/08/The-cult-of-Our-Lady-of-Sorrows.jpg")
    }, 
]

effects.each do |effect|
    effectarray = Effect.create(effect)
    puts "Some MAGIC just create a #{ effectarray.id } with name #{ effectarray.image }!"
end