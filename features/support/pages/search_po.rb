class SearchPage

    include Capybara::DSL

    def search(item)
        find("#h_search-input").set item
        find("#h_search-btn").click
    end

    def table_results
        find("div[class$=main-grid]")
    end

    def choose_item
        find("img[src*='1222486253/1222486659_1GG.jpg']").click
        click_link "comprar"
    end
end