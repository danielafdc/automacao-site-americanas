class ShoppingBasketPage

    include Capybara::DSL

    def my_basket_item
        all(".list-unstyled li")
    end

    def summary_total
        within(".summary-total__wrapper") do
        find("span[class*=summary-total]")
        end
    end

    def increase_item(qty)
        within("div[class$=selectbox]")
        combo = find("select[class$=select__quantity]")
        combo.find("option", text: qty, match: :first).select_option
    end

    def remove_item
        find("a[class*=productRemoveAct").click
    end

    def empty_basket_message
        find(".basket-empty")
    end
end