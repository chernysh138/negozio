# надо вызывать в последовательности иерархии
require_relative "lib/produkt"
require_relative "lib/book"
require_relative "lib/movie"
#_______________способ когда данные лежат в отдельных фацлах , используем сеттер__________
# movie = Movie.from_file(__dir__ + "data/films/01.txt")
# book = Book.from_file(__dir__ + "data/books/01.txt")
# puts movie
# puts book

#______________способ с созданием массива и выведением его в цикле__________________________
produkts = []

produkts << Movie.new(price: 290, amount: 9, name: "titanik", year: "1999", autor: "спилберг")
produkts << Movie.new(price: 350, amount: 12, name: "ronin", year: "2007", autor: "muraiami")
produkts << Book.new(price: 570, amount: 2, name: "вий", autor: "гоголь", janre: "ужас")

produkts.each_with_index do |prod, indx|
  puts "#{indx + 1}. #{prod}"
end
