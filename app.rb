require "sinatra"

pets = ["satanas"]

get '/pets' do
  @pets = pets
  erb :index
end

post '/pets' do
   pets << params["name"]
   @pets = pets
   erb :index
end

get '/new_pet' do
  @method = "post"
  erb :form_pet
end

get '/edit_pet/:id' do
  @method = "patch"
  @pet = pets[params[:id].to_i]
  erb :form_pet
end

patch '/pets' do
 pets[params[:id].to_i]= params["name"]
 @pets = pets
 erb :index
end

delete '/pets' do
  puts "Estamos en delete"
  p request
  pets.delete_at(params[:id].to_i)
  @pets = pets
  erb :index
end
