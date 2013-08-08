Depot::Application.routes.draw do
  


	root :to => 'store#index', :as => 'store'
	
	get "store/index" 
	
	
	resources :products, :carts, :line_items, :store, :orders
end
