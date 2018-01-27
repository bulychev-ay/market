class CartsController < ApplicationController

   def all
      @cart = Cart.first.id
   end

end
