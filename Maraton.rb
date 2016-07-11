require 'csv'

class Maraton
  def self.controller
    $ask = CSV.read("preguntas.csv")
    $ask.delete_if {|x| x.empty?}
    $buenas = 0
    $malas = 0
    Maraton.preguntas
    puts ""
    puts "****************************************************************"
    puts "Terminaste"
    puts "Procesando tus respuestas"
    sleep 3
    print ".."
    sleep 3
    print ".."
    sleep 2
    print ".."
    sleep 1
    puts ".."
    sleep 0.7
    puts ".."
    sleep 0.7
    puts ""
    puts "Tuviste #{$buenas} Correctas =) y #{$malas} Incorrectas =("
    puts ""
    puts "Si tienes menos de 5, Aun tienes mucho que aprender"
    puts "Si tienes de 5 a 10, Vas por buen camino"
    puts "Si tienes de 10 a 15, Eres Fan"
    puts "Si tienes obtuviste mas de 15 preguntas buenas eres una total Harmonizer"
    puts ""
    puts "GRACIAS POR JUGAR."  
    puts ""
  end
  def self.preguntas
    until $ask.empty?
      $answer = $ask.pop(2).flatten
      puts ""
      puts "Pregunta"
      puts $answer[0]
      Maraton.respuestas
    end
  end
  def self.respuestas
    print "Respuesta: "
    @intento = gets.chomp
    if @intento == $answer[1]
      puts "¡Correcto!"
      $buenas += 1
    else
      puts "¡Incorrecto!" 
      puts ""
      puts "La respuesta correcta es: #{$answer[1]}"
      $malas += 1
    end
  end
end
puts ""
puts "Bienvenido a el test ¿QUE TAN HARMONIZER ERES? ... Te daremos una pregunta y deberás contestar con la respuesta correcta."  
puts ""
puts "Contesta con letra minuscula"
puts "Cargando preguntas"
    sleep 3
    print ".."
    sleep 3
    print ".."
    sleep 2
    print ".."
    sleep 1
    puts "."
    sleep 0.7
    puts ""
puts "Comienza el test...."
Maraton.new
Maraton.controller


