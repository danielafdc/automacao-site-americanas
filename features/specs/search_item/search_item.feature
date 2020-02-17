#language:pt

Funcionalidade: Buscar por livros
    Eu, enquanto Amante de Livros de fantasia
    Quero buscar livros por nome ou pelo autor
    Para eu possa fazer uma pesquisa pelo preço

    Contexto: Página inicial
        Dado que acessei a página inicial do sistema
    
    Esquema do Cenário: Buscar livro por nome ou autor
        Quando faço uma busca por "<tipo_busca>"
        Então devo ver os livros disponíveis de acordo com a pesquisa feita

        Exemplos:
        |tipo_busca|
        |o senhor dos anéis|
        |j. r. r. tolkien|
    
    Cenário: Busca por livro inexistente
        Quando faço uma busca por "dhfifoieufoiayfsfhlsdfjlsKDf"
        Então devo ver a seguinte mensagem
        """
        Ops! nenhum resultado encontrado para "dhfifoieufoiayfsfhlsdfjlsKDf".
        """