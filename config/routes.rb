Rails.application.routes.draw do
  get '/', to: 'tweets#index', as: :tweets
end
