class Fixnum
  define_method(:numbers) do
    number_words = []
    current_value = self
    base_number = { 1 =>"one", 2 =>"two", 3 =>"three", 4 =>"four", 5 =>"five", 6 =>"six", 7 =>"seven", 8 =>"eight", 9 =>"nine", 10 =>"ten", 11 =>"eleven", 12 =>"twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}
    tens_numbers = {20 => "twenty", 30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety"}


    if current_value < 100000 && current_value >= 20000
      number_words.push(tens_numbers.fetch((current_value - current_value%10000)/1000))
      current_value = current_value%10000
    end
    if current_value < 20000 && current_value >= 10000
      number_words.push(base_number.fetch((current_value - current_value%1000)/1000).concat(" thousand"))
      current_value = current_value%1000
    end
    if current_value < 10000 && current_value >= 1000
      number_words.push(base_number.fetch((current_value - current_value%1000)/1000).concat(" thousand"))
      current_value = current_value%1000
    end
    if current_value < 1000 && current_value >= 100
      number_words.push(base_number.fetch((current_value - current_value%100)/100).concat(" hundred"))
      current_value = current_value%100
    end
    if current_value <= 99 && current_value >= 20
      number_words.push(tens_numbers.fetch(current_value - current_value%10))
      current_value = current_value%10
    end
    if current_value <= 19 && current_value > 0
      number_words.push(base_number.fetch(current_value))
    end
    number_words.join(" ")
  end
end
