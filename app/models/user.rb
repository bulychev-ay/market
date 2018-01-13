class User < ApplicationRecord
   has_one :cart

   enum gender: [:man, :woman]

end
