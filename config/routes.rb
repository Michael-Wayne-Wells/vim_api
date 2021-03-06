# frozen_string_literal: true

Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  resources :cheat_sheets
  get '/random' => 'cheat_sheets#random'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
