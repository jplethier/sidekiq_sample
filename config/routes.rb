Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  # authenticate :user do
  #   mount Sidekiq::Web => '/sidekiq'
  # end
end
