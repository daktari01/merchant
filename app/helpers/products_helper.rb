module ProductsHelper
    def print_price(price)
        #format("$%.2f", price)
        number_to_currency price
    end
    def print_stock(stock)
        if stock > 0
            content_tag(:span, "In stock (#{stock})", class: "in_stock" )
        else
            content_tag(:span, "Out of stock", class: "out_stock")
        end
        
        # if stock == 0
        #     content_tag(:span, "Out of stock", class: "out_stock")
        # elsif stock >= requested
        #     content_tag(:span, "In stock (#{stock})", class: "in_stock")
        # elsif stock < requested
        #     content_tag(:span, "Insufficient stock (#{stock})", class: "low_stock")
        # end
    end
end
