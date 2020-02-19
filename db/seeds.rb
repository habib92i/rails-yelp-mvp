# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Pop',
    address:      '1234 casgrain',
    phone_number: '514-123-4567',
    category: 'french'
  },
  {
    name:         'Pizza East',
    address:      '123 casgrain',
    phone_number: '514-123-4564',
    category: 'italian'
  },
  {
    name:         'East-Coast',
    address:      '134 casgrain',
    phone_number: '514-123-4565',
    category: 'belgian'
  },
  {
    name:         'Wang Wang',
    address:      '100 casgrain',
    phone_number: '514-123-4566',
    category: 'chinese'
  },
  {
    name:         'Tong Tong',
    address:      '10 casgrain',
    phone_number: '514-123-4560',
    category: 'japanese'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
