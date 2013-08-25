Depot::Application.routes.draw do
  


  resources :users


	root :to => 'store#index', :as => 'store'
	
	get "store/index" 
	
	
	resources :carts, :line_items, :store, :orders

	resources :products do
		get :who_bought, :on => :member
	end
end
