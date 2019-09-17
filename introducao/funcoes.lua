-- funcoes recursiva
function soma(a, b)
	
	return a + b

end

print(soma(1, 2))

-- funcao anonima
a = function(valor)
	
	return print(valor)

end

a("mensagem")


-- funcao sem valor
function falar()

	print("fala ae")

end

falar()