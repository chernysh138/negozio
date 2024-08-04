# надо вызывать в последовательности иерархии
require_relative "lib/produkt"
require_relative "lib/book"
require_relative "lib/movie"

film1 = Movie.new(price: 290, amount: 9)
puts "у нас есть #{film1.amount} фильмов по #{film1.price} грн"
