Rails.application.routes.draw do
  root to: 'locations#index'

  devise_for :users

  resources :locations

  namespace :api do
    namespace :v1 do
      # post 'user_token' => 'user_token#create'
      post :auth, to: 'authentication#create'

      resources :locations do
        resources :recordings
      end
    end
  end
end
