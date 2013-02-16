Ticketee::Application.routes.draw do
 # get "users/index"
 get "/admin/users/index"

  devise_for :users

  root :to => "projects#index"
  resources :projects do 
    resources :tickets
  end
end
