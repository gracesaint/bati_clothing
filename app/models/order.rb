class Order < ApplicationRecord
    has_many :order_items, dependent: :destroy
    
    #validates :street, :city, :state, presence: false
   
    
    def total
        order_items.map do |i| i.subtotal end.sum
    end
    
    def promo
        if input.equals('15OFF') do
            total - (total* (-0.15))
        end
        end
    end
end
