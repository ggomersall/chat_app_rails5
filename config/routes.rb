Rails.application.routes.draw do
  devise_for :users

  resources :chatrooms do
    # resource should be singular as it's just for individual user
    # this resource also only allows for joining and leaving channels
    resource :chatroom_users
    resources :messages
  end

  root to: "chatrooms#index"
end
