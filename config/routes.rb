Rails.application.routes.draw do
	resources :game do
  		member do
    		get 'start'
    		get 'next'
    		get 'next_bad'
    	end
  	end
	get 'main/index'

  root 'game#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
