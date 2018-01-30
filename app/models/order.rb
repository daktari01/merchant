class Order < ApplicationRecord
    has_many :order_items, dependent: :destroy
    has_many :products
    belongs_to :user

    def total
        order_items.inject(0){|sum, p|sum + p.subtotal}
    end
end
