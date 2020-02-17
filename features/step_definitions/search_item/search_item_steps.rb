Dado("que acessei a página inicial do sistema") do
    visit("/")
end
  
Quando("faço uma busca por {string}") do |search_item|
  @search_item = search_item
  @search_page.search(@search_item)
end
  
Então("devo ver os livros disponíveis de acordo com a pesquisa feita") do
  expect(@search_page.table_results).to have_content @search_item
end
  
Então("devo ver a seguinte mensagem") do |item_not_found_message|
  expect(page).to have_content item_not_found_message
end