# надо вызывать в последовательности иерархии
require_relative "lib/produkt"
require_relative "lib/book"
require_relative "lib/movie"
#_______________способ когда данные лежат в отдельных фацлах , используем сеттер__________
movie = Movie.from_file(__dir__ + "/data/films/01.txt")
book = Book.from_file(__dir__ + "/data/books/01.txt")
puts movie
puts book
# Пытаемся вызвать метод from_file у класса Product и ловим ошибку
begin
  Produkt.from_file(__dir__ + "/data/films/01.txt")
rescue NotImplementedError
  puts "метод from_file не реализован на классе Produkt "
end
