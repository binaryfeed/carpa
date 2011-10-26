require 'sinatra'
require 'haml'
require 'sass'
require './carpa.rb'

# Routes

get "/css/:sheet.css" do |sheet|
  sass :"css/#{sheet}"
end

get "/" do
  haml :index
end

get "/offer", :provides => 'application/pdf' do
  offer = Offer.new
  offer.write_pages
  offer.render
end
