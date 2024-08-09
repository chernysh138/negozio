class Book < Produkt
  attr_accessor :janre

  def initialize(params)
    super
    @name = params[:name]
    @autor = params[:autor]
    @janre = params[:janre]
  end

  def to_s
    "книга #{@name} автор #{@autor}  в жанре #{@janre} #{super}"
  end
end
