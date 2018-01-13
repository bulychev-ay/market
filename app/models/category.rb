class Category < ApplicationRecord

   has_many :category_products, dependent: :destroy
   has_many :products, through: :category_products


   # Category.create(name: "mouse", description: "игровые мыши, офисные мыши, трекболы")
   # Category.create(name: "tablet", description: "планшеты, лаптопы")
   # Category.create(name: "notebook", description: "ноутбуки, нетбуки, смартбуки, трансформеры")
   # Category.create(name: "smartphone", description: "смартфоны, мобильные телефоны")
end
