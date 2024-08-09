class Book < Product
  attr_accessor :janre, :name, :autor

  def initialize(params)
    super
    @name = params[:name]
    @autor = params[:autor]
    @janre = params[:janre]
  end

  def to_s
    "книга #{@name} автор #{@autor}  в жанре #{@janre} #{super}"
  end

  # Метод класса from_file считывает данные о книге из файла, путь к которому
  # ему передали в качестве параметра и передает их на вход своему же
  # конструктору с нужными ключами.
  def self.from_file(file_path)
    lines = File.readlines(file_path).map { |l| l.chomp }
    self.new(
      name: lines[0],
      janre: lines[1],
      autor: lines[2],
      price: lines[3].to_i,
      amount: lines[4].to_i,

    )
  end

  def update(params)
    super
    @name = params[:name] if params[:name]
    @autor = params[:autor] if params[:autor]
    @janre = params[:janre] if params[:janre]
  end
end
