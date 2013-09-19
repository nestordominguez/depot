Depot::Application.routes.draw do
  


  get "admin" => 'admin#index'

  controller :sessions do
  	get 'login' 	=> :new
  	post 'login' 	=> :create
  	delete 'logout'	=> :destroy
  end

  	root :to => 'store#index', :as => 'store'
	
	get "store/index" 
		
	resources :carts, :line_items, :store, :orders, :users

	resources :products do
		get :who_bought, :on => :member
	end
end
