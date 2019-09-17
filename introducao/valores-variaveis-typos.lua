a = 3 --number

b = "agua" -- string

-- nill Not in list = valor inexistente

--number: numeros em lua sao float por default

x = 1

y = 2.5

address = 0x0000aaf8

print(x + y)

-- string : textos

endereco = "Av Maracana, 255"

telefone = "(14)3732-5555"

print("Meu telefone eh",telefone)
print("Meu endereco eh", endereco)

-- table: Tabelas -> tipo de dados parecido com objeto

pessoa = {

	nome = "Eric",
	idade = "26"

}

print(pessoa.nome)

-- array por tabela
pares = {0, 2, 4, 6, 8, 10}


-- funçoes recursiva em lua
function soma(a, b)

	return a + b

end

print(soma(20, 2))

-- atribuindo funcao a uma variavel

s = soma

print(s(1, 2))

-- thread: Corrotinas


-- userdata: Tipos customizados definidos por usuário em c