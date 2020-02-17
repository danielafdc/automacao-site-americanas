Dado("que eu já adicinei na cesta o livro que comprarei") do
    steps %(
        Dado que eu já escolhi o livro que comprarei
        Quando eu adiciono o livro na cesta de compras
    )
end

Quando("eu removo esse item") do
    @basket_page.remove_item
end
  
Então("vejo a seguinte mensagem {string}") do |empty_basket_message|
    expect(@basket_page.empty_basket_message).to have_content empty_basket_message
end
  
Então("minha cesta de compras deverá estar vazia") do
    expect(page).not_to have_css(".list-unstyled li")
end