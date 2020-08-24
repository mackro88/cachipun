usuario = ARGV[0]
cpu = rand(0..2)

#piedra = 0
#papel = 1
#tijera = 2

cpu = 'piedra' if cpu == 0
cpu = 'papel' if cpu == 1
cpu = 'tijera' if cpu == 2

if usuario != 'piedra' && usuario != 'papel' && usuario != 'tijera'
    puts "Argumento inválido: Debe ser piedra, papel o tijera."
elsif usuario == cpu
    puts "Ambos hicieron #{usuario}. Es un empate!"
elsif usuario == 'piedra' && cpu == 'tijera' || usuario == 'papel' && cpu == 'piedra' || usuario == 'tijera' && cpu == 'papel'
    puts "Hiciste #{usuario} y la CPU hizo #{cpu}. Ganaste!!!"
else usuario == 'papel' && cpu == 'tijera' || usuario == 'tijera' && cpu == 'piedra' || usuario == 'piedra' && cpu == 'papel'
    puts "Hiciste #{usuario} y la CPU hizo #{cpu}. Perdiste."
end