class Product < ApplicationRecord
  
  searchable do
      text :title, :description, :size, :color
       
  end
  
    
  validates :title, :description, :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  
  belongs_to :user
    
end
