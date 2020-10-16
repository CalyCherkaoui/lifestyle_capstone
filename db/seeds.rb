# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.create(
  [
    {
      name: 'Interiors',
      priority: 1
    },
    {
      name: 'Farming',
      priority: 2
    },
    {
      name: 'Herbs',
      priority: 3
    },
    {
      name: 'Plant-care',
      priority: 4
    },
    {
      name: 'Green-cities',
      priority: 5
    },
    {
      name: 'Green-food',
      priority: 6
    }
  ]
)