# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'application#index'

  namespace :api do
    namespace :user do
      post '/login', to: 'login#index'
    end
  end
end
