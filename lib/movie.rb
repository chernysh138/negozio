class Movie < Produkt
  attr_accessor :year

  def initialize(params)
    super

    @year = params[:year]
  end

  def to_s
    "фильм снятый #{@year} в году #{super}"
  end
end
