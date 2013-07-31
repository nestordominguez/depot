Depot::Application.routes.draw do
	root :to => 'store#index', :as => 'store'
	
	get "store/index" 
	get "products/index", :as => "products"
	
	resources :products, :carts, :line_items, :store
end
