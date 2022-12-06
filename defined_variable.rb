# encoding: utf-8

# Программа выводит сколько байт в числе и в строке.
# "Этот фрагмент нужен для использования русских символов."
if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locate_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

# Чтобы узнать, объявлена ли переменная в программе используем метод "defined?"
# Объявим переменную "a"
a = 1
if defined?(a)
  puts "Переменная \'a\' определена"
else
  puts "Переменная \'a\' не определена"
end
if defined?(b)
  puts "Переменная \'b\' определена"
else
  puts "Переменная \'b\' не определена"
end
