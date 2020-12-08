# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Project.create([
    {name: "Lightbulb Change", description: "Replace a burnt out light bulb with a properly functioning one", instructions: "put on gloves and set up ladder uner the burnt out light. Climb ladder and unscrew old bulb. Screw in the new bulb and climb back down the ladder."},
    {name: "Paint Livingroom", description: "Apply a fresh coat of paint in the livingroom", instructions: "Clear room of furniture and cover the floor with plastic. Sand and fill in any irregularities in the walls. Apply tape to the edges of the walls and paint with brush. Paint larger areas with a roller"}
])

Resource.create([
    {name: "light bulb", resource_type: "material", own: true, price: 0},
    {name: "gloves", resource_type: "tool", own: true, price: 0},{name: "ladder", resource_type: "tool", own: false, price: 100},
    {name: "painters plastic", resource_type: "material", own: false , price: 15 },
    {name: "sandpaper", resource_type: "material", own: true, price: 0},
    {name: "drywall compund", resource_type: "material", own: true , price: 0 },
    {name: "painters tape", resource_type: "material", own: false , price: 5 },
    {name: "paintbrush", resource_type: "tool", own: true , price: 0},
    {name: "paint roller", resource_type: "tool", own: false, price: 20},
    {name: "roller pan", resource_type: "tool", own: false, price: 12},
    {name: "paint", resource_type: "material", own: false , price: 40 },
])