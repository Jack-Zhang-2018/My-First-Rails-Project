Rails.application.routes.draw do
  # get '/example'=> 'main#example'
  get '/game/:number'=> 'game#try'
  get '/game'=> 'game#try'
  get '/new_game'=> 'game#reset'
  get '/new_game/:number'=> 'game#reset'
end

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
