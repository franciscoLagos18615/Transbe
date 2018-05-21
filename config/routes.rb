Rails.application.routes.draw do
  get 'vacations/index'

  get 'settlements/index'

  get 'sallary_settlements/index'

  get 'contract_installations/index'

  get 'contract_guards/index'

  get 'bills/index'

  get 'installations/index'

    #el root es de que direccione como paga de inicio al index de la carpeta bienvenido
  root 'bienvenida#index'
  #get 'guards/index'
  #resource :guards
  #get '/guards/', to: 'guards#index'
  #get '/guards/new', to: 'guards#new'
  #post '/guards', to: 'guards#create'
  #get '/guard/:id', to: 'guards#show', as: 'guard'
  #get '/guards/:id/edit', to: 'guards#edit', as: 'edit_guard'
  #put '/guard/:id', to: 'guards#update'
  get '/guards', to: 'guards#index'
  get '/guards/new', to: 'guards#new'
  post '/guards', to: 'guards#create'
  get '/guard/:id', to: 'guards#show', as: 'guard'
  get '/guards/:id/edit', to: 'guards#edit', as: 'edit_guard'
  patch '/guard/:id', to: 'guards#update'
  put '/guard/:id', to: 'guards#update'
  delete '/guard/:id', to: 'guards#delete'


  devise_for :users
  get 'bienvenida/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
