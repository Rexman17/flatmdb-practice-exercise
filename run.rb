require 'pry'
require_relative 'lib/actor'
require_relative 'lib/movie'
require_relative 'lib/role'

a1 = Actor.new(name: "Ali Stone", rank: "C", age: 21)
a2 = Actor.new(name: "Alpa Chino", rank: "A", age: 83)
a3 = Actor.new(name: "Javier Bardem", rank: "A", age: 60)
a4 = Actor.new(name: "Issa Rae", rank: "A", age: 33)
a5 = Actor.new(name: "Timmy Wiseau", rank: "D", age: 13)
a6 = Actor.new(name: "Ian H", rank: "E", age: 33)
#
m1 = Movie.new(title: "An Affair to Forget", year: 2017, box_office: 70_000_000)
m2 = Movie.new(title: "The Room 2", year: 2014, box_office: 7)
m3 = Movie.new(title: "Flatiron Man", year: 2014, box_office: 170_000_000)
m4 = Movie.new(title: "My Big Fat Geek Wedding", year: 1999, box_office: 20_000_000)
#
r1 = Role.new(actor: a1, movie: m1, name: "Svetlana", earnings: 0.15)
r2 = Role.new(actor: a2, movie: m1, name: "Georgie", earnings: 0.05)
r3 = Role.new(actor: a3, movie: m2, name: "Lisa", earnings: 0.07)
r4 = Role.new(actor: a5, movie: m2, name: "Tommy Jr.", earnings: 0.77)
r5 = Role.new(actor: a1, movie: m3, name: "Flatiron Man", earnings: 0.22)
r6 = Role.new(actor: a4, movie: m3, name: "Thor", earnings: 0.22)
r7 = Role.new(actor: a3, movie: m3, name: "Captain America", earnings: 0.12)
r8 = Role.new(actor: a1, movie: m4, name: "Ali", earnings: 0.22)
r9 = Role.new(actor: a6, movie: m4, name: "Ian", earnings: 0.22)
r10 = Role.new(actor: a5, movie: m4, name: "Timmy", earnings: 0.02)

binding.pry
0
