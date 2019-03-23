require "sinatra"

pets = ["satanas"]

get '/pets' do
  @pets = pets
  erb :index
end
