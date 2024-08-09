class Movie < Produkt
  attr_accessor :year, :name, :autor

  def initialize(params)
    super
    @name = params[:name]
    @autor = params[:autor]
    @year = params[:year]
  end

  def to_s
    "фильм #{@name} снятый #{@autor} в #{@year} году #{super}"
  end
end
