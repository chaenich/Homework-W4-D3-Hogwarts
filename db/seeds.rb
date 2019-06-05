require_relative('../models/student')
require_relative('../models/house')
require('pry')

Student.delete_all()
House.delete_all()

house1 = House.new( {
  "name" => "Gryffindor",
  "logo_locn" => "../images/Gryffindor.png"
})
house1.save()

house2 = House.new( {
  "name" => "Ravenclaw",
  "logo_locn" => "../images/Ravenclaw.png"
})
house2.save()

house3 = House.new( {
  "name" => "Hufflepuff",
  "logo_locn" => "../images/Hufflepuff.png"
})
house3.save()

house4 = House.new( {
  "name" => "Slytherin",
  "logo_locn" => "../images/Slytherin.jpeg"
})
house4.save()

student1 = Student.new( {
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house_id" => house1.id,
  "age" => "12"
})
student1.save()

student2 = Student.new( {
  "first_name" => "Bobby",
  "last_name" => "Weasel",
  "house_id" => house3.id,
  "age" => "18"
})
student2.save()

student3 = Student.new( {
  "first_name" => "Timmy",
  "last_name" => "Magica",
  "house_id" => house1.id,
  "age" => "17"
})
student3.save()

student4 = Student.new( {
  "first_name" => "Janet",
  "last_name" => "Magic-Street-Porter",
  "house_id" => house3.id,
  "age" => "10"
})
student4.save()

student5 = Student.new( {
  "first_name" => "Magic Mabel",
  "last_name" => "The 1st",
  "house_id" => house2.id,
  "age" => "13"
})
student5.save()

student6 = Student.new( {
  "first_name" => "Thelonious",
  "last_name" => "Chestang",
  "house_id" => house3.id,
  "age" => "11"
})
student6.save()

student7 = Student.new( {
  "first_name" => "Theodore",
  "last_name" => "Thorthup",
  "house_id" => house2.id,
  "age" => "15"
})
student7.save()

student8 = Student.new( {
  "first_name" => "Billy",
  "last_name" => "Black-Hat",
  "house_id" => house4.id,
  "age" => "16"
})
student8.save()

student9 = Student.new( {
  "first_name" => "Davina",
  "last_name" => "Doughty",
  "house_id" => house3.id,
  "age" => "12"
})
student9.save()
