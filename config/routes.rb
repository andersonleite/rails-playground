Rails.application.routes.draw do
  namespace :api do
    get 'header' => 'headers#show'
    resources :blog
  end
end
