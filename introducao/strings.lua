-- Strings em lua

s1 = "agua"

s2 = 'abacate'

s3 = "I'm ok"

-- string longa com 2 colchetes
s4 =[[ 
	Este e um 'texto'
	com "quebra" de linha"
	]]

print(s4)

-- string com quebra de linha com \n
s5 = "Este e um 'texto'\n com quebra de \n linha"

print(s5)

-- concatenando string

s6 = s4..s3

print(s6)

-- pegando o comprimento de uma string

print("O comprimento da string eh: " ..tostring(#s1))

-- concatenando uma tabela com table.concat
print(table.concat({"Agua", "do", "mar"}, ","))

-- funçao join forma dinamica de concatenar tabela
function join(sep, words)

	-- retorna uma table.concat
	return table.concat(words, sep)

end

print(join("__", {"Agua", "do", "mar"}))

-- concatenacao simples
print("cachorro" .. " " .. "animal")

-- pegando uma string entre a posicao 5 a 7
print(string.sub(s3, 5, 7).."!")

-- convertendo uma string para maiuscula string.upper
print(string.upper(s3))

-- convertendo uma string para minuscula string.lower
print(string.lower(s3))