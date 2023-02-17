class BattlegroundController < Sinatra::Base
    set :default_content_type, 'application/json'

    post '/battlegrounds' do
        attacker = Character.find(params[:initiatorID])
        target = Enemy.find(params[:targetID])
        
        battle = Battleground.create(
                character_id: attacker.id,
                enemy_id: target.id,
                initiator: attacker.name,
                target: target.name,
                health_change: attacker.phys_attack + attacker.mag_attack,
                skirmish_log: "#{attacker.name} attacks #{target.name}"
            )
        battle.attack attacker: attacker, target: target

        battle.to_json(include: [:character, :enemy])
        
    end

    delete '/battleground/all' do
        Battleground.reset
        encounter = {
            characters: Character.all,
            enemies: Enemy.all,
            battlegrounds: Battleground.all
        }
        encounter.to_json
    end

    

end