-- string.find permite buscar uma palavra dentro da string

s = "Curso de Lua"

-- string.find retorna a posicao da palavra
-- print(string.find(s, "Lua"))

-- lendo um arquivo csv
nomeArquivoMoedas = "./arquivos/20190923.csv"

arqMoedas = io.open(nomeArquivoMoedas)

conteudo = arqMoedas:read("*a")

-- pegando a posicao da primeira quebra de linha

--  // --------- CABEÇALHO ------------ //
posicaoDaQuebra, fimDaQuebra = string.find(conteudo, "\n")

cabecalho = string.sub(conteudo, 1, posicaoDaQuebra - 1)


--  // ---------- PRIMEIRA LINHA APOS CABEÇALHO --------- //

-- pegando o inicio da linha
inicioDaALinha = fimDaQuebra + 1

posicaoDaQuebra, fimDaQuebra = string.find(conteudo, "\n", fimDaQuebra +1)

-- pegando o final da linha
fimDaLinha = posicaoDaQuebra - 1

linha1 = string.sub(conteudo, inicioDaALinha, fimDaLinha)

-- Ler o nome da moeda,
-- *Simbolo da moeda
-- *Nome do pais

-- regex - regular expressoes
-- REGEX VALIDA PADROES CONTIDOS EM UM TEXTO

-- REGEX // ---------------- //

-- %w - procura qualquer caractere alfanumerico dentro de um texto
-- %d - procura qualquer digito dentro de um texto 
-- %l - procura letras minúsculas
-- %p - procura caracteres de pontuação
-- %s - procura caracteres de espaço
-- %u - procura letras maiúsculas
-- %w - procura caracteres alfanuméricos
-- %x - procura dígitos hexadecimais
-- %z - procura o personagem com representação 0

-- // ----------------------//
ini, fim = string.find(linha1,";[%w ]+;")

print(linha1)

print("Incio / Fim:",ini, fim)

nomeMoeda = string.sub(linha1, ini, fim)

-- limpando o ponto e virgula
nomeMoeda = string.sub(nomeMoeda, 2, #nomeMoeda - 1)


print(nomeMoeda)





