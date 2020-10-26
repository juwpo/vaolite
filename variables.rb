if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

variable = 1

class MyClass

  def initialize
    @variable = 2
  end
  
  def check_variables
    puts "Переменная 'variable': #{defined?(variable)}"
    puts "Переменная '@variable': #{defined?(@variable)}"
  end
end

copy = MyClass.new
puts "В классе:"
puts copy.check_variables
puts "Вне класса"
puts "Переменная 'variable': #{defined? (variable)}"
puts "Переменная '@variable': #{defined? (@variable)}"



