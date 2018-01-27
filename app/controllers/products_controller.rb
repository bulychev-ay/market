class ProductsController < ApplicationController

   def index
   end

   def show
   end

   def all_products
      @products = Product.all
      @products.each do |product|
         product.description = product.description
      end
      @products
   end

end
