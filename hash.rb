# Estrutura p/ representar os estudantes e a respectiva idade de cada um
# Porém essa não é a melhor de estruturamos essa estrutura de dados
students =     [ "Peter", "Mary", "George", "Emma", "Gabriel"]
student_ages = [ 24     , 25    , 22      ,  20    ]

# Neste caso abaixo, o ultimo nome da lista será mostrado SEM a idade
# Pois seu indice não existe na lista `student_ages`
students.each_with_index do |name, index|
  puts "#{name.capitalize} tem #{student_ages[index]} anos"
end

# Por isso utilizamos Hashes
# Assim garantimos que os valores sempre correspondem a uma CHAVE
students_age = {
    "Peter" => 24,
    "Mary" => 25,
    "George" => 22,
    "Emma" => 20
  }

# Melhor legibilidade:
students_age.each do |key, value|
  puts "#{key} tem #{value} anos"
end

# ------------- DECLARANDO UMA HASH ------------- 
# Todos os modos abaixo representam como CRIAR uma Hash:
# paris = {
#     "country" => "France",
#     "population" => 2211000,
#     "area" => 1_000_000
# }
#
# paris = {
#     :country => "France",
#     :population => 2211000
# }
#
# Porém o modelo abaixo representa a boa prática do seu uso em Ruby:
paris = {
    country: "France",
    population: 2211000,
    area: 1_000_000
}

# ------------- LENDO UMA HASH ------------- 
# Sempre que quisermos acessar o valor de uma Hash,
# Utilizamos o nome da sua chave:

puts paris["country"] # => "France"
puts paris["population"] # => "2211000"


# ------------- ADICIONAR NOVOS VALORES EM UMA HASH ------------- 
# Para adicionarmos um novo valor ao Hash, precisamos dar um nome NOVO a nossa CHAVE
# Assim, se a chave correspondente não existir, o valor é criado
paris[:star_monument] = "Tour Eiffel"


# ------------- ATUALIZAR VALORES EM UMA HASH ------------- 
# Para atualizar algum VALOR, acessamos sua chave existente, e atribuimos um novo valor a chave 
paris[:population] = 2211001


# ------------- DELETANDO VALORES EM UMA HASH ------------- 
# Para Deletar um valor da Hash, precisamos passar qual
# o nome da CHAVE que irá ser deletada
paris.delete(:star_monument)

# ------------- MÉTODOS PRESENTES EM HASH ------------- 
# Assim como na Array, podemos utilizar métodos de iteração
# p/ passar por cada elemento presente na Hash
paris.each do |key, value|
  puts "Paris #{key} is #{value}"
end
# => Paris country is France
# => Paris population is 2211001 

p paris.key?(:star_monument) # Podemos verificar se uma chave está presente utilizando .key?
p paris.keys.map { |key| key.to_s } # Retornando todas as CHAVES em uma lista (Array) de Strings
p paris.values # Retornando todos os VALORES presentes na Hash