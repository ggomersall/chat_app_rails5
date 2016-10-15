Rails.application.routes.draw do
  devise_for :users

  resources :chatrooms do
    # resource should be singular as it's just for individual user
    resource :chatroom_users
  end

  root to: "chatrooms#index"
end
