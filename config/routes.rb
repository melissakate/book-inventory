BookInventory::Application.routes.draw do

  root to: "products#index"

  resources :products  do
    get :fborrowed , on: :collection
    get :funborrowed , on: :collection    
    resources :borrow_histories , except: [:show , :edit , :destroy ]
  end


end
