Coach.destroy_all

gunnar = Coach.create(name: "Gunnar Peterson", gender: "male", age: 58)
gunnar.clients.create(name: "Jennifer Lopez")
gunnar.clients.create(name: "Sofia Vergara")
gunnar.clients.create(name: "Angelina Jolie")
gunnar.clients.create(name: "Matthew McConaughey")
gunnar.clients.create(name: "Kim Kardashian")

jillian = Coach.create(name: "Jillian Michaels", gender: "female", age: 46)
jillian.clients.create(name: "Pink")
jillian.clients.create(name: "Julia Roberts")
jillian.clients.create(name: "Amanda Peet")
jillian.clients.create(name: "Sarah Paulson")

tracy = Coach.create(name: "Tracy Anderson", gender: "female", age: 45)
tracy.clients.create(name: "Jessica Simpson")
tracy.clients.create(name: "Kate Hudson")
tracy.clients.create(name: "Courteney Cox")
tracy.clients.create(name: "Gwyneth Paltrow")
tracy.clients.create(name: "Shakira")

jenkins = Coach.create(name: "Mark Jenkins", gender: "male", age: 77)
jenkins.clients.create(name: "Mary J. Blige")
jenkins.clients.create(name: "Beyonce")
jenkins.clients.create(name: "Busta Rhymes")
jenkins.clients.create(name: "Sean Combs")
jenkins.clients.create(name: "LL Cool J")