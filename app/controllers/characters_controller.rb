class CharactersController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    patch '/character/:id' do
        selectedChar = Character.find(params[:id])
        selectedChar.update(dead: params[:isDead])
        selectedChar.to_json()
    end

    delete '/character/:id' do
        Character.find(params[:id]).delete
    end
  
  end