# Класс-родитель Товар, у которого есть цена и остаток на складе. От этого
# класса мы будем наследовать все другие товары.
class Produkt
  # У любого экземпляра класса Товар будут как минимум две переменные — цена
  # и количество единиц товара на складе
  attr_reader :price, :amount, :autor, :name
  # Конструктор товара записывает, сколько стоит товар и сколько осталось
  def initialize(params)
    @price = params[:price]
    @amount = params[:amount]
    @autor = params[:autor]
    @name = params[:name]
  end

  def to_s
    "#{@name} автора #{autor}(осталось #{@amount} шт. по цене #{@price} )"
  end
end
