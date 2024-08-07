class Roma
  attr_accessor :name, :year

  def initialize(params)
    @name = params[:name]
    @year = params[:year]
  end
end

coliseum = Roma.new(name: "coliseum", year: "102")
puts "#{coliseum.name} года постройки #{coliseum.year}"

class Castelli < Roma
  attr_accessor :name, :year, :autor

  def initialize(params)
    super
    @autor = params[:autor]
  end
end

terma = Castelli.new(name: "croce", year: "200", autor: "serega")
puts "#{terma.name} #{terma.year} года постройки , автор #{terma.autor} "
