Rails.application.routes.draw do
   #get 'market/show_all'
   #resources :products

   get 'products', to: 'products#all_products'
   get 'cart', to: 'carts#all'

   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
