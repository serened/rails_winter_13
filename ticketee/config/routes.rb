Ticketee::Application.routes.draw do
 # get "users/index"
 # get "/admin/users/index"
namespace :admin do 
	root :to => "base#index" 
	resources :users
end

  devise_for :users

  root :to => "projects#index"
  resources :projects do 
    resources :tickets
  end
end
