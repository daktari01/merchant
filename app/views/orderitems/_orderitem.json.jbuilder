json.extract! orderitem, :id, :product_id, :order_id, :quantity, :created_at, :updated_at
json.url orderitem_url(orderitem, format: :json)
