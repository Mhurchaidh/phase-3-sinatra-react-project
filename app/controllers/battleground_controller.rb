class BattlegroundController < Sinatra::Base
    set :default_content_type, 'application/json'

    post '/' do
        # battlers = Character.all + Enemy.all
        # params[:characterAttacking] ?  : 
        Battleground.attack attacker: Character.find(params[:initiatorID]), target: Enemy.find(params[:targetID])
        # puts params[:characterAttacking]
        encounter = {
            characters: Character.all,
            enemies: Enemy.all,
            battlegrounds: Battleground.all
        }
        encounter.to_json
    end

    delete '/' do
        Battleground.reset
    end

end