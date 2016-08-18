require 'sidekiq-ent/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'
  post 'puts', to: 'puts#create'
  root 'puts#new'
end
