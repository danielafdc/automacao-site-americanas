Dado("que eu já escolhi o livro que comprarei") do
  visit ("/")
  @search_item = "o senhor dos anéis"
  @home_page.search(@search_item)
end
  
Quando("eu adiciono o livro na cesta de compras") do
  @home_page.choose_item
end
  
Então("minha cesta deverá conter {int} item") do |item_qty|
  expect(@basket_page.my_basket_item.size).to eql item_qty
end
  
Então("o valor total da compra") do
  expect(@basket_page.summary_total).to have_content "141,49"
end
  
Quando("aumento a quantidade para {int}") do |item_qty|
  @basket_page.increase_item(item_qty)
end
  
Então("o valor total do item deverá ser duplicado") do
  expect(@basket_page.summary_total).to have_content "282,98"
end