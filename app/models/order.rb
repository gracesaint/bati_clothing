class Order < ApplicationRecord
    has_many :order_items, dependent: :destroy
    
    #just added from merchant rails tutorial  
    belongs_to :user
    
   validates :street, :city, :state, presence: false
   
    
    def total
        order_items.map do |i| i.subtotal end.sum
    end
    
end
