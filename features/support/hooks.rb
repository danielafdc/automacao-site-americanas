Before do
    @search_page = SearchPage.new
    @basket_page = ShoppingBasketPage.new
end

After do |scenario|
    name_sce = scenario.name.gsub(/([_@#!%()\-=;><,{}\~\[\]\.\/\?\"\*\^\$\+\-]+)/, '')
    name_sce = name_sce.tr(" ","_").downcase!
    screenshot = "log/screenshots/#{name_sce}.png"

    if scenario.failed?
    page.save_screenshot(screenshot)
    end
end
Capybara.default_max_wait_time = 5