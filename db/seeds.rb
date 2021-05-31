# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

action_items = ["Ate Sweets", "Drank Alcohol", "Went for a run", "Ate out", "Called Mom", "Read for fun", "Got a tattoo"]

action_items.each do |a|
  Action.create! title: a, icon: "Test", last_execution: Time.zone.now - rand(1..15).days
  # goal: rand(5..500), goal_unit: 0
end
