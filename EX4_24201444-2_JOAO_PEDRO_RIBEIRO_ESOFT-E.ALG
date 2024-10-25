algoritmo "PesquisaSatisfacaoCliente"
var
    qualidade: vetor[1..4] de real
    preco: vetor[1..4] de real
    usabilidade: vetor[1..4] de real
    mediaQualidade, mediaPreco, mediaUsabilidade: real
    mediaGeral: vetor[1..4] de real
    melhorProduto: inteiro
    melhorMedia: real
    i: inteiro

inicio

    para i de 1 até 4 faça
        escreva("Digite a avaliação de qualidade do produto ", i, ": ")
        leia(qualidade[i])

        escreva("Digite a avaliação de preço do produto ", i, ": ")
        leia(preco[i])

        escreva("Digite a avaliação de usabilidade do produto ", i, ": ")
        leia(usabilidade[i])
    fimpara


    mediaQualidade := 0
    mediaPreco := 0
    mediaUsabilidade := 0


    para i de 1 até 4 faça
        mediaQualidade := mediaQualidade + qualidade[i]
        mediaPreco := mediaPreco + preco[i]
        mediaUsabilidade := mediaUsabilidade + usabilidade[i]

        mediaGeral[i] := (qualidade[i] + preco[i] + usabilidade[i]) / 3
    fimpara


    mediaQualidade := mediaQualidade / 4
    mediaPreco := mediaPreco / 4
    mediaUsabilidade := mediaUsabilidade / 4


    melhorProduto := 1
    melhorMedia := mediaGeral[1]

    para i de 2 até 4 faça
        se mediaGeral[i] > melhorMedia então
            melhorMedia := mediaGeral[i]
            melhorProduto := i
        fimse
    fimpara


    escreva("Média de satisfação para qualidade: ", mediaQualidade:0:2)
    escreva("Média de satisfação para preço: ", mediaPreco:0:2)
    escreva("Média de satisfação para usabilidade: ", mediaUsabilidade:0:2)

    para i de 1 até 4 faça
        escreva("Média geral do produto ", i, ": ", mediaGeral[i]:0:2)
    fimpara

    escreva("O produto mais bem avaliado é o produto ", melhorProduto, " com média ", melhorMedia:0:2)

fimalgoritmo
