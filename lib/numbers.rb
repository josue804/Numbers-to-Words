class Fixnum
  define_method(:numbers) do
    base_number = { 1 =>"one", 2 =>"two", 3 =>"three", 4 =>"four", 5 =>"five", 6 =>"six", 7 =>"seven", 8 =>"eight", 9 =>"nine", 10 =>"ten", 11 =>"eleven", 12 =>"twelve", 13 => "thirteen", 15 => "fifteen"}
    tens_numbers = {20 => "twenty", 30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety"}
    if self <= 12 || self == 13 || self == 15
      base_number.fetch(self)
    elsif self <= 19
        base_number.fetch(self-10).concat("teen")
    elsif self < 100
      tens_numbers.fetch(self - self%10).concat(" " + base_number.fetch(self%10))
    elsif self < 1000
      if self%100 >= 20
        base_number.fetch((self - self%100)/100).concat(" hundred " + tens_numbers.fetch(self%100 - self%100%10).concat(base_number.fetch(self%10)))
      elsif self%100 < 20
        base_number.fetch((self - self%100)/100).concat(" hundred" + " " + base_number.fetch(self%100))
      end
    end
  end
end
