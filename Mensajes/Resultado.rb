class Resultado
  attr_accessor :nombres

  # Crear el objeto
  def initialize(nombres = "score")
    @nombres = nombres
  end

  # Decirle hola a todos
  def decir_hola
    if @nombres.nil?
      puts "..."
    elsif @nombres.respond_to?("each")
      # @nombres es una lista de algún tipo,
      # ¡así que podemos iterar!
      @nombres.each do |nombre|
        puts "Hola #{@nombre}"
      end
    else
      puts "Hola #{@nombres}"
    end
  end
  
  def resultado
    if @partida.nil?
      puts "..."
    elsif @partida.respond_to?("each")
      @partida.each do |nombre|
        puts "Resultado de la partida #{@partida}"
      end
    else
      puts "Partida #{@equipos}"
    end
  end    

  # Decirle adiós a todos
  def win
    if @win.nil?
    if @prize = (1-9999)
      puts "..."
    elsif @win.respond_to?("ganó")
      # Juntar los elementos de la lista
      # usando la coma como separador
      puts "El equipo #{@win.join(",ganó ") #{@prize}}. ."
    else
      puts "Felicitaciones ganaste #{@prize}."
    end
  end

end


if __FILE__ == $0
  ma = MegaAnfitrion.new
  ma.Resultado
  ma.Partida

  # Cambiar el nombre a "@all"
  ma.nombres = "@all"
  ma.decir_hola
  ma.decir_adios

  # Cambiar el nombre a un vector de nombres
  ma.nombres = @all
  ma.decir_hola
  ma.decir_adios

  # Cambiarlo a nil
  ma.nombres = nil
  ma.decir_hola
  ma.decir_adios
end
