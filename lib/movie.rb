class Movie < Product
  attr_accessor :year, :title, :director

  def initialize(params)
    super
    @title = params[:title]
    @director = params[:director]
    @year = params[:year]
  end

  def to_s
    "фильм #{@title} снятый #{@director} в #{@year} году #{super}"
  end

  def self.from_file(file_path)
    lines = File.readlines(file_path).map { |l| l.chomp }
    self.new(
      title: lines[0],
      director: lines[1],
      year: lines[2],
      price: lines[3].to_i,
      amount: lines[4].to_i,

    )
  end

  def update(params)
    super
    @title = params[:title] if params[:title]
    @director = params[:director] if params[:director]
    @year = params[:year] if params[:year]
  end
end
