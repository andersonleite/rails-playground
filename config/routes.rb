Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  namespace :api do
    get 'header' => 'headers#show'
    resources :blog
  end
  get 'feed', to: 'newsfeed#index'
end
