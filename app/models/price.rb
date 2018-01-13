class Price < ApplicationRecord

   has_many :price_products, dependent: :destroy
   has_many :products, through: :price_products
   belongs_to :currency

end
