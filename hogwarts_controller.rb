require('sinatra')
require('sinatra/contrib/all')
require('pry')

require_relative('./models/student')
also_reload('./models/*')

# INDEX - retrieve all students
get '/students' do
  @students = Student.all()
  erb(:index)
end
