class CharactersController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    patch '/character/:id' do
        # THIS IS WHERE MY PATCH WILL GO TO SEND CHARACTER TO GRAVEYARD
    end

    delete '/character/:id' do
        # THIS IS WHERE I WILL DELETE CHARACTER FROM TABLE COMPLETELY
    end
  
  end