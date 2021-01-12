require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sleep(4)
puts 'Cleaning database'
sleep(4)
Task.destroy_all
puts 'Database empty'
sleep(4)
puts 'Seeding the database'

20.times do
  task = Task.create!(
    title: Faker::Job.field,
    details: Faker::Hipster.sentence
  )
  puts "Created Task #{task.title} # #{task.id} from 20"
  sleep(0.3)
end

puts "Database ready. #{Task.count} tasks created."
