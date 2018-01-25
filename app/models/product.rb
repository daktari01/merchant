class Product < ApplicationRecord
    validates :stock, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
    validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
    validates :title, presence: true
    validates :description, presence: true
    validates :image_url, presence:true
end
