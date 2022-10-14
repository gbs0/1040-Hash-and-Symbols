# Vamos construir um programa que diga qual a idade de cada aluno,
# da seguinte maneira:
# Olá, #{batch_number}
# "#{name} tem #{X} anos"
# "#{name} tem #{X} anos"
# "#{name} tem #{X} anos"
# "#{name} tem #{X} anos"

# Implementação:
def greetings(batch_number, hash = {}) # Atribuimos um valor de {} ao parametro, assim é esperado receber sempre uma Hash
  puts "Olá, batch #{batch_number}" # Saudação Inicial
  hash.each do |name, age| # Passando por cada elemento da Hash
    puts "#{name} tem #{age} anos" # Imprimindo a CHAVE name e o VALOR age
  end
end

# Chamamos a função greeting passando uma hash como parâmetro
greetings(1040, { Marcus: 28, Tomas: 34, Lola: 27, Mariane: 21, Matteo: 30 })

# Podemos refatorar a chamada da função sem utilizar as {} no parametro students
greetings(1040, Marcus: 28, Tomas: 34, Lola: 27, Mariane: 21, Matteo: 30)

