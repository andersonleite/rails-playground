Rails.application.routes.draw do
  namespace :api do
    get 'header' => 'headers#show'
  end
end
