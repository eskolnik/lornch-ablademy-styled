# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
student1 = Student.create(name: "Napoleon Dynamite")
student3 = Student.create(name: "Boston Carpetbagger")
student2 = Student.create(name: "Lily's Evil Twin Sister")
student4 = Student.create(name: "Ezra")
student5 = Student.create(name: "Kylee")
student6 = Student.create(name: "Lily")

clinic1 = Clinic.create(name: "Big U Notation", speaker: "Seb", description: "The universe is infinitely complex")
clinic2 = Clinic.create(name: "How to Sleep for Programmers", speaker: "Ezra", description: "Don't listen to Ezra")

r1 = Comment.create(clinic: clinic2, asker: "Lily", body: "Right on")
r2 = Comment.create(clinic: clinic2, asker: "Kylee", body: "Kylee disagrees")
r3 = Comment.create(clinic: clinic1, asker: "Ezra", body: "Is the complexity U(n)?")

Signup.create(student: student1, clinic: clinic2)
Signup.create(student: student1, clinic: clinic1)
Signup.create(student: student5, clinic: clinic2)
Signup.create(student: student6, clinic: clinic2)
Signup.create(student: student4, clinic: clinic1)
Signup.create(student: student5, clinic: clinic1)
Signup.create(student: student6, clinic: clinic1)
