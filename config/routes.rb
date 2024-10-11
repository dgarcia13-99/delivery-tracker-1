Rails.application.routes.draw do
  devise_for :users

  # READ
  root "deliveries#index"

  get("/deliveries", { :controller => "deliveries", :action => "deliveries" })

  # Routes for the Delivery resource:

  # CREATE
  post("/insert_delivery", { :controller => "deliveries", :action => "create" })
          
  get("/deliveries/:path_id", { :controller => "deliveries", :action => "show" })
  
  # UPDATE
  
  post("/modify_delivery/:path_id", { :controller => "deliveries", :action => "update" })
  
  # DELETE
  get("/delete_delivery/:path_id", { :controller => "deliveries", :action => "destroy" })

  #------------------------------

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
