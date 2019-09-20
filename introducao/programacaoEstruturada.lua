-- resolucao de uma equacao do segundo grau

-- ax^2 + bx + x = 0

-- x1 = (-b - sqrt(delta)) / (2 * a)

-- x2 = (-b + sqrt(delta)) / (2 * a)

-- delta = b^2 - 4 * a *c

-- x^2 - 5x + 6 = 0

-- atribundo conta dinamica a uma funcao -----//
function calculaDelta(a, b, c)

		delta = b^2 - 4 * a * c

		x1 = (-b - math.sqrt(delta)) / (2 * a)

		x2 = (-b + math.sqrt(delta)) / (2 * a)

		print("o valor do delta eh:",delta)

		print("o valor de x1 eh:",x1)

		print("o valor de x2 eh:",x2)

	end

print(calculaDelta(1, -5, 6))

-- estrutura de if else ---------------//
function compararValores(a, b)
	
	if a > b then

		print("A eh maior que B")
		
	else

		print("B eh maior que A")

	end

end

compararValores(10, 2)

-- estrutura tabela passando um for na tabela
tabela = {2, 10, 5, 6, 20, 15, 7}

pessoas = {

	{
	nome = "teste",
	endereco = "123",
	telefone = "9999"
	},

	{
	nome = "fulano",
	endereco = "321",
	telefone = "8888"
	}
}

-- funcao recursiva para dar listar  uma tabela no console
function listar(o)
   if type(o) == 'table' then
      local s = '{ '
      for k,v in pairs(o) do
         if type(k) ~= 'number' then k = '"'..k..'"' end
         s = s .. '['..k..'] = ' .. listar(v) .. ','
      end
      return s .. '} '
   else
      return tostring(o)
   end
end

print("tabela:", listar(tabela))

print("pessoas:", listar(pessoas))


-- fazendo um for em uma tabela para pegar o maior valor
maior = tabela[1]

for i = 2, #tabela do

	if tabela[i] > maior then
		
		maior = tabela[i]
	end
end

print(maior)
-- pegando um elemento de uma tabela em lua

-- tabela concatenado com posicao [] ex tabela[1]
elemento = tabela[1]

print(elemento)