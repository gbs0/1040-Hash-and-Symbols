# 1. What’s a variable? What’s the point of using variables? Give an example.
# É uma assimilação na memória em que podemos salvar algum valor especifico.
age = 61 # Iniciamos a variável age, com o valor 61 (Integer)

# 2. Precisely describe the following line of code using the correct vocabulary.
age = 18
# Assimilando uma nova variável age, com o respectivo valor 18 (Integer)


# 3. What’s a method? What’s the point of defining methods?
# A method is a name which refers to a sequence of program instructions in memory to store code.
# The point of using methods is to be able to reuse and manipulate code.

# 4. Precisely describe what happens at each line using good vocabulary. 
# Write a ruby comment next to the line you’re explaining using the #.
print "4. "
def multiply(x, y) # Primeiramente, definimos um método "multiply", cujos parametros seram "x" e "y"
  return x * y     # Retornamos a operação de multiplicação resultante do valor X e Y
end                # Encerramos a definição do método!         
  
puts multiply(5, 8) # Imprimindo a chamada do método multiply, definindo seus parametros 

# 5. What’s the keyword if ? 
# Give us an example of if statements, using an age variable storing a student’s age for instance. 
# A proposta do IF é alem de verificar se as condições são verdadeiras ou falsas,
# O if é importante quando nós queremos mudar o comportamento do nosso programa (execução)
print "5. "
age = 18
if age >= 18
  puts "Você está liberado p/ beber!"
else
  puts "Você ainda é de menor, espere mais um pouco!"
end

# 6. Complete the following code to compute the exact average of students grades (using each ).
print "6. "
# TODO: compute and store the result in a variable `average`
grades = [19, 8, 11, 15, 13]
sum = 0
grades.each do |grade|
  sum += grade
end
puts sum.fdiv(grades.length)


# 7. Define a capitalize_name method which takes first_name and last_name
# as parameters and returns the well-formatted fullname (with capitalized first and last names).
print "7. "

def capitalize_name(first_name, last_name)
#   return first_name.capitalize + " " + last_name.capitalize
#   return "#{first_name.capitalize} #{last_name.capitalize}"
  full_name = "#{first_name.capitalize} #{last_name.capitalize}"
  return full_name
end
puts capitalize_name("michael", 'jackson') # => "Michael Jackson"


# 8. What’s the difference between concatenation and interpolation? Give an example.
# Interpolação: "#{variable_1} #{variable_2}"
# É utilizada p/ rodarmos código ruby dentro da string.

# Concatenação: "Gabriel" + " " + "Penha" => "Gabriel Penha"
# É um conjunto de Strings, que formam uma string ao final da execução.

# 9. Translate each line of pseudo-code into ruby.
print "9. "
fruits = ["banana", "peach", "watermelon", "orange"]

# Print out "peach" from the fruits array in the terminal
print fruits[1] + "\n"

# Add an "apple" to the fruits array
fruits.push('apple') # fruits << 'apple'

# Replace "watermelon" by "pear"
fruits[2] = 'pear'

# Delete "orange"
# fruits.delete_at(3)
# fruits.delete_at(-1)
fruits.delete('orange')
puts fruits

# 10. Translate each line of pseudo-code into ruby.
print "10. "
city = { name: "Paris", population: 2_000_000 }

# Print out the name of the city
p city[:name]

# Add the Eiffel Tower to city with the `:monument` key
city[:monument] = "Tour Eiffel"

# Update the population to 2000001
# city[:population] = 2_000_001
city[:population] += 1

# What will the following code return?
city[:mayor] # => nil
# Ao acessar uma chave não definida, o retorno será NULO

# 11. Use the map iterator to convert the variable students, an array of arrays, 
# into an array of hashes. Those hashes should have two keys: :name and :age. 
# What is the type of those keys?
print "11. "
# TODO: Convert the array of arrays into an array of hashes.
students = [ [ "john", 28 ], [ "mary", 25 ], [ "paul", 21 ] ]
new_students = students.map do |student|
   student = { name: "#{student[0]}", age: student[1] }
end

p new_students
