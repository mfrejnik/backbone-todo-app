# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Todo.find_or_initialize_by(description: 'Pick up milk').tap do |todo|
  todo.status = 'incomplete'
  todo.save!
end

Todo.find_or_initialize_by(description: 'Walk the dog').tap do |todo|
  todo.status = 'complete'
  todo.save!
end
