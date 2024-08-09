class Produkt
  attr_reader :price, :amount

  # Конструктор товара записывает, сколько стоит товар и сколько осталось
  def initialize(params)
    @price = params[:price]
    @amount = params[:amount]
  end

  def to_s
    "(осталось #{@amount} шт. по цене #{@price} )"
  end

  def update(params)
    @price = params[:price] if params[:price]
    @amount = params[:amount] if params[:amount]
  end

  # Абстрактный метод from_file для продукта не имеет смысла, т.к. абстрактный
  # продукт из файла мы прочитать не сможем (мы не знаем, например, формат),
  # поэтому если он не определен у родителя, он будет возвращать ошибку. Класс
  # ошибки так и называется «ошибка отустствия имлементации».
  def self.from_file(file_path)
    raise NotImplementedError
  end
end
