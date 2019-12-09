Rails.application.routes.draw do
  get '/', to: 'tweets#index', as: :tweets
  get '/auth/twitter/callback', to: 'tweets#login'
  get '/logout', to: 'tweets#logout', as: :logout
end
