Rails.application.routes.draw do
  root 'omamori#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :omamoris, only: [ :index, :create ]
    end
  end

  # Defines the root path route ("/")
  # root "posts#index"
  # testing file namme
end
