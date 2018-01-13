class Product < ApplicationRecord

   has_many :cart_products, dependent: :destroy
   has_many :carts, through: :cart_products
   has_many :price_products, dependent: :destroy
   has_many :prices, through: :price_products
   has_many :category_products, dependent: :destroy
   has_many :categories, through: :category_products



   #Product.create(name: "Apple Magic Mouse 2 белый", photo: "http://gsmking.ru/5915-tm_thickbox_default/besprovodnaya-mysh-apple-magic-mouse-2-white-bluetooth-mla02.jpg", description: "Беспроводная мышь Apple Magic Mouse 2 отвечает всем современным требованиям.", price: 6999, category: "", available: 55)
end
