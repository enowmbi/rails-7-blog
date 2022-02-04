Rails.application.routes.draw do
  resources :posts do
    resource :comments, only: :create
  end

  root "posts#index"

end
