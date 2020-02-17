#language:pt

Funcionalidade: Remover itens na cesta de compras
    Eu, enquanto Amante de Livros de fantasia
    Quero incluir na minha cesta de compras um livro escolhido
    Para que eu possa iniciar o processo de compra

    Contexto: Item já adicionado na cesta
        Dado que eu já adicinei na cesta o livro que comprarei

        Cenário: Remover item da cesta
        Quando eu removo esse item
        Então vejo a seguinte mensagem "sua cesta está vazia"
        E minha cesta de compras deverá estar vazia