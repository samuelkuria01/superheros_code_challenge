
#Seed data for power class
powers = [{
    "name":"super strength",
    "description": "Gives the wielder super-human strength"
},
{
    "name":"lazer eys",
    "description": "the hero is able to release burning lene through the eyes"
},
{
    "name":"Flight",
    "description": "The hero is able to float on air"
},
{
    "name":"super strength",
    "description": "Gives the wielder super-human strength"
},
{
    "name":"telepathy",
    "description": "A hero can read someone else mind"
},
{
    "name":"telekanisis",
    "description": "A hero can be able to move object with thier mind"
},
{
    "name":"invisibility",
    "description": "A hero is able to dissapear in thin air"
}]

powers.each do |power|
    Power.create(power)
end



# Seed data for heroes class
heros = ([
    {
        "name":"Kamala Khan",
        "super_name":"Ms.Marvel"
    },
    {
        "name":"Doreen Green",
        "super_name":"Squirrel Girl"
    },
    {
        "name":"Gwen Stacy",
        "super_name":"Spider-Gwen"
    },
    {
        "name":"Clerk Kent",
        "super_name":"Superman"
    },
    {
        "name":"Bruce wayne",
        "super_name":"Batman"
    },
])

heros.each do |hero|
    Hero.create(hero)
end
