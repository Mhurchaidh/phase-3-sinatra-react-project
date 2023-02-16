class BattlegroundController < Sinatra::Base
    set :default_content_type, 'application/json'

    post '/' do
        
        Battleground.attack attacker: Character.find(params[:initiatorID]), target: Enemy.find(params[:targetID])
        
        encounter = {
            characters: Character.all,
            enemies: Enemy.all,
            battlegrounds: Battleground.all
        }
        encounter.to_json
    end

    delete '/' do
        Battleground.reset
        encounter = {
            characters: Character.all,
            enemies: Enemy.all,
            battlegrounds: Battleground.all
        }
        encounter.to_json
    end

end