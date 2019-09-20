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

-- do em lua = chunk

-- local + variavel atribui valor local a variavel
-- ela so ira funcionar dentro da funcao ou chunk

do	
	tabela = {1,2,3,4,5,6}

	local maior = tabela[1]

	for i=2, #tabela do

		if tabela[i] > maior then
			
			 maior = tabela[i]
		end

	end
	print(maior)
end

-- criando uma funçao quer recebe uma funçao 
function exec(f, x, y)

	return f(x, y)

end

-- passando a funçao para uma tabela
funcs = {soma}

numero1 = 10

numero2 = 12

-- executando funçoes dinamicamente em um for
for i=1, #funcs do
		
	local res = exec(funcs[i], numero1, numero2)

	print(res)

end

-- funçao que retorna mais de um valor
function baskara(a, b, c)

	local delta = b^2 - 4 * a * c

	local x1 = (-b - math.sqrt(delta)) / (2 * a)

	local x2 = (-b + math.sqrt(delta)) / (2 * a)

	-- retornando 2 resultados
	return x1, x2

end

print(baskara(1, -5, 6))


-- atribuindo uma funcao de multiplos valores a 
-- uma variavel
x1, x2 = baskara(1, -5, 6)

print(x1, x2)



-- funcao para concatenar 
function concatenar(...)

	local args = {...}

	local ret = ""

	for i, str in ipairs(args) do

		ret = ret .. str

		end

	return ret
end

-- concatenando parametros
print(concatenar("a", "b", "c"))

-- explodindo uma tabela em lua

x = 1

y = 2

params = {"(", tostring(x), ", ", tostring(y), ")"}

print(concatenar(unpack(params)))


-- closures em lua // ---------------

-- é uma funçao que retorna uma funçao

function genSoma(parcela)

	local s = function(b)

	return parcela + b

		end

	return s
end


soma2 = genSoma(21)

print(soma2(10))



