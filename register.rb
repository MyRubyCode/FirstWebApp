require 'sinatra'
require 'rubygems'

set :port, 8080
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

