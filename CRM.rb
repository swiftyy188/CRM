require_relative 'contact'
require 'sinatra'
Contact.create("johnny", "Bravo", "johnny@bitmakerlabs.com"," abc")
get "/" do
  @crm_app_name = "My CRM"
  erb :index
end

get "/contacts" do
  erb :contacts
end

get "/contacts/new" do
  erb :new_contact
end

get "/contacts/:id" do
	@contact = Contact.find(params[:id].to_i)
	erb :show_contact
end

post "/contacts" do
  Contact.create(params[:first_name], params[:last_name], params[:email], params[:note])
  redirect to('/contacts')
end