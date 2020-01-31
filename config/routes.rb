Rails.application.routes.draw do
  resources :action_tags
  resources :cheat_sheets
  get '/random' => 'cheat_sheets#random'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
