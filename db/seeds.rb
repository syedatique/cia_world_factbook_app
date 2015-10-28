# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Country.delete_all
Country.create!(name: 'Bangladesh', flag_image: 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQcwPKJk930RILThIJreJ4PBe_i7Sf4WuwiU6zOHavZR-RpCky2Zg', size: '55585000', population: '5670000',first_language: 'Bangla', currancy: 'Taka' )
Country.create!(name: 'USA', flag_image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtJ_h8GMxsd00QFegxK-3uHmyjAWmTLWXv1B7pW7i13xwMPLyM', size: '98088000', population: '5670000',first_language: 'English', currancy: '$' )
Country.create!(name: 'Spain', flag_image: 'http://www.spain-flag.eu/photos/spain-flag.gif', size: '265000', population: '5670000', first_language: 'Spanish', currancy: '€' )