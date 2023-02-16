class EnemiesController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    patch '/encounter' do
        Character.find(params[:id]).attack(params[:enemy])
    end
  
  end