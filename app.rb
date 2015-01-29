require 'sinatra'

require_relative "./models/item"


# ## Examples
# get '/' do # Root path
#   "Hello World!"
# end

# get '/example' do
#   "My example."
# end

# get '/daily-show' do
#   "Daily Show now hosted by Marc Wright"
# end





get '/' do
  @title = "About Me"
  erb :home
end

get '/contact-me' do
  @title = "Contact"
  erb :contact
end

get '/items' do
  @title = "Items"
  @items = Item.all
  erb :items
end

get '/items/:id' do
  @item = Item.find(params[:id])
  puts @item
  erb :item
end

# get '/hello/:name' do
#   "Hello there, #{params[:name]}. How are you doing today?"
# end

# # Total flash forward, don't worry about the deetz
# get '/customers/:id' do
#   @customer = Customer.find(params[:id])
# end