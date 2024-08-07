class Book < Produkt
  attr_accessor :janre

  def initialize(params)
    super

    @janre = params[:janre]
  end

  def to_s
    "в жанре #{@janre} книга #{super}"
  end
end
