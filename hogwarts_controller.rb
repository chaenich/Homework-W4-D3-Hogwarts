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

# Next 2 actions required for insert
# NEW - set up a new record for 'post' to create
get '/students/new' do
  @houses = House.all()
  erb(:new)
end

# CREATE - /students with a POST
post '/students' do
  @student = Student.new(params)
  @student.save()
  erb(:create)
end
