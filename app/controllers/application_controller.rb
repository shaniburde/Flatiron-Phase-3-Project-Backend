class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/artists' do
    Artist.all.to_json
  end

  get '/artists/:id' do
    artist = Artist.find(params[:id])
    artist.to_json
  end

end
