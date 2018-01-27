class Order < ApplicationRecord
    has_many :order_items
    has_many :products

    def total
        total = order.inject(0) { |sum, p| sum + p.subtotal }
    end
end
