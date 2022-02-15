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

  get '/venues' do 
    venues = Venue.all
    venues.to_json( only: [:venue_name, :id] )
  end

  post '/add-venue' do
    venue = Venue.create(
      venue_name: params[:venue_name],
      address: params[:address],
      phone: params[:phone],
      capacity: params[:capacity]
    )
    venue.to_json
  end

  post '/add-event' do
    event = Event.create(
      venue_id: params[:venue_id],
      user_id: params[:user_id],
      attendees: params[:attendees],
      price: params[:price],
      event_type: params[:event_type],
      date: params[:date]
    )
    event.to_json
  end

end
