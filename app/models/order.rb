class Order < ApplicationRecord
    has_many :order_items, dependent: :destroy
    
    def total
        order_items.map do |i| i.subtotal end.sum
    end
    
end
