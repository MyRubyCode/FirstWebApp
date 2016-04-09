require 'sinatra'
require 'rubygems'

set :port, 8080
set :bind, '0.0.0.0'
set :views, "views"

get '/' do
    erb :index
end

get '/index' do
    erb :index
end

get '/start' do
    erb :index
end

get '/listCourses' do
    erb :listCourses
end

get '/addCourse' do
    erb :addCourse
end

get '/removeCourse' do
    erb :removeCourse
end
get '/studentInfo' do
    erb :studentInfo
end

get '/quit' do
    erb :quit
end

# register GET method
get '/register' do
    erb :register, :locals => {:name => params[:name], :age => params[:age], :major => params[:major], :email => params[:email]}
end

# register POST method
post '/register/' do
    name = params[:student_name] 
    age = params[:student_age] 
    major = params[:student_major] 
    email = params[:student_email]
    erb :register, :locals => {:name => name, :age => age, :major => major, :email => email}
end

