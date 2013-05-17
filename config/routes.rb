BookInventory::Application.routes.draw do

  root to: "products#index"

  resources :products  do
    get :borrowed , on: :collection
    get :unborrowed , on: :collection
    
    resources :borrow_histories , except: [:show , :edit , :destroy ]
  end


end
