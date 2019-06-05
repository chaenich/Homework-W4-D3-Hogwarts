require_relative('../models/student')

Student.delete_all()

student1 = Student.new( {
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house" => "Gryffindor",
  "age" => "12"
})

student2 = Student.new( {
  "first_name" => "Bobby",
  "last_name" => "Weasel",
  "house" => "Hufflepuff",
  "age" => "18"
})

student3 = Student.new( {
  "first_name" => "Timmy",
  "last_name" => "Magica",
  "house" => "Gryffindor",
  "age" => "17"
})

student4 = Student.new( {
  "first_name" => "Janet",
  "last_name" => "Magic-Street-Porter",
  "house" => "Hufflepuff",
  "age" => "10"
})

student5 = Student.new( {
  "first_name" => "Magic Mabel",
  "last_name" => "The 1st",
  "house" => "Ravenclaw",
  "age" => "13"
})

student6 = Student.new( {
  "first_name" => "Thelonious",
  "last_name" => "Chestang",
  "house" => "Hufflepuff",
  "age" => "11"
})

student7 = Student.new( {
  "first_name" => "Theodore",
  "last_name" => "Thorthup",
  "house" => "Ravenclaw",
  "age" => "15"
})

student8 = Student.new( {
  "first_name" => "Billy",
  "last_name" => "Black-Hat",
  "house" => "Slytherin",
  "age" => "16"
})

student9 = Student.new( {
  "first_name" => "Davina",
  "last_name" => "Doughty",
  "house" => "Hufflepuff",
  "age" => "12"
})

student1.save()
student2.save()
student3.save()
student4.save()
student5.save()
student6.save()
student7.save()
student8.save()
student9.save()
