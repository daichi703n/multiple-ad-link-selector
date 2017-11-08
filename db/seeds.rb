# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Link.create(
  sort: 1,
  description: 'Sample Link',
  link: '<a href="https://mals.herokuapp.com/">MALS</a>',
  enabled: true
  )
Link.create(
  sort: 2,
  description: 'Sample Link2',
  link: '<a href="https://mals2.herokuapp.com/">MALS</a>',
  enabled: true
  )
