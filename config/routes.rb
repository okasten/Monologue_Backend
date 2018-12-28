Rails.application.routes.draw do
  resources :user_monologues


  namespace :api do
    namespace :v1 do
      resources :users, only: [:create] do
        resources :monologues
      end

      get '/profile', to: "users#profile"
      post '/login', to: 'auth#create'

    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
