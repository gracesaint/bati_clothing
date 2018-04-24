json.extract! product, :id, :title, :price, :color, :size, :description, :image_url, :created_at, :updated_at
json.url product_url(product, format: :json)
