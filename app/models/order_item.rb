class OrderItem < ApplicationRecord
    belongs_to :order
    belongs_to :product
    
    validates :order_id, :product, presence: true
    
    def subtotal
      quantity.to_i * product.price
    end
    
    
end
