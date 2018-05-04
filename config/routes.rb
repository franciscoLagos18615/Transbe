Rails.application.routes.draw do
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
