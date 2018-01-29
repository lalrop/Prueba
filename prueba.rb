def read_alum(alumnos)
file = File.open(alumnos, 'r')
alum = file.readlines.map(&:chomp).map { |lines| lines.split(', ') }
file.close
alum
end

a = read_alum('alumnos.csv')
puts '
      -------------------------------------------------------------------------

        Seleccione una opcion de las siguientes:
          1 : Alumnos junto con su promedio
          2 : Numero de inasistencias
          3 : Alumnos aprobados
          4 : Salir'

opcion = gets.chomp.to_i

while opcion !=4
    case opcion
      when 1
        for i in 0..(a.length-1)
          alumno_i = a[i]
          nombre = alumno_i[0]
          notas = alumno_i[1..-1]
          sumatoria = notas.inject(0){|sum,i| sum = sum + i.to_i}
          promedio = sumatoria/notas.length
          puts hash1 = {nombre => promedio}
        end

      when 2
        for i in 0..(a.length-1)
          alumno_i = a[i]
          nombre = alumno_i[0]
          inasistencias = alumno_i.count('A')
          puts hash2 = {nombre => inasistencias}
        end

      when 3
        puts ' Ingrese nota para aprobar (por defecto la nota es 5)'
        nota_a = gets.chomp.to_i
        end
        for i in 0..(a.length-1)
          alumno_i = a[i]
          nombre = alumno_i[0]
          notas = alumno_i[1..-1]
          sumatoria = notas.inject(0){|sum,i| sum = sum + i.to_i}
          promedio = sumatoria/notas.length
          hash1 = {nombre => promedio}
          aprobados = hash1.keep_if{|key,value| value >= nota_a}
            if aprobados.empty? != true
              puts aprobados
            end
          end
    end

puts '
      -------------------------------------------------------------------------

        Seleccione una opcion de las siguientes:
          1 : Alumnos junto con su promedio
          2 : Numero de inasistencias
          3 : Alumnos aprobados
          4 : Salir'

opcion = gets.chomp.to_i

end
puts "Usted a salido, Adios!"
