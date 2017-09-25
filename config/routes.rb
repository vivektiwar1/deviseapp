Rails.application.routes.draw do

	resources :charges, only: [:new, :create]
	root 'subscribers#new'
	resources :subscribers
	resources :posts  
 	devise_for :users, controllers:{registrations: "registrations" }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root "home#index";
end
