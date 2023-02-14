class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    Character.all.to_json
    Enemy.all.to_json
    Battleground.all.to_json
  end

end
