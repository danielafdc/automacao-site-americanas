#language:pt

Funcionalidade: Adicionar itens na cesta de compras
    Eu, enquanto Amante de Livros de fantasia
    Quero incluir na minha cesta de compras um livro escolhido
    Para que eu possa iniciar o processo de compra

    Contexto: Item escolhido
        Dado que eu já escolhi o livro que comprarei
        Quando eu adiciono o livro na cesta de compras
        
        Cenário: Adicionar item ao carrinho
        Então minha cesta deverá conter 1 item
        E o valor total da compra
        
        Cenário: Aumentar a quantidade do item escolhido
        E aumento a quantidade para 2
        Então o valor total do item deverá ser duplicado