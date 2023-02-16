class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    encounter = {
    characters: Character.all,
    enemies: Enemy.all,
    battlegrounds: Battleground.all
  }
  encounter.to_json
  end

end
