class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    event = Event.all
    event.to_json(include: :venue)
    
  end

  get '/user' do
    user = User.first
    user.to_json(include: :event)
  end


end
