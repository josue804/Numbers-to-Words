class Fixnum
  define_method(:numbers) do
    number_words = []
    current_value = self
    base_number = { 1 =>"one", 2 =>"two", 3 =>"three", 4 =>"four", 5 =>"five", 6 =>"six", 7 =>"seven", 8 =>"eight", 9 =>"nine", 10 =>"ten", 11 =>"eleven", 12 =>"twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}
    tens_numbers = {20 => "twenty", 30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety"}

    if self < 1000 && self >= 100
      number_words.push(base_number.fetch((self - self%100)/100).concat(" hundred"))
      current_value = self%100
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


    #if self <= 12 || self == 13 || self == 15
      #base_number.fetch(self)
    #elsif self <= 19
#        base_number.fetch(self-10).concat("teen")
#    elsif self < 100
      #tens_numbers.fetch(self - self%10).concat(" " + base_number.fetch(self%10))
    #elsif self < 1000
      #if self%100 >= 20
        #base_number.fetch((self - self%100)/100).concat(" hundred " + tens_numbers.fetch(self%100 - self%100%10).concat(base_number.fetch(self%10)))
      #elsif self%100 < 20
        #base_number.fetch((self - self%100)/100).concat(" hundred" + " " + base_number.fetch(self%100))
      #end
    #end
  #end
#end
