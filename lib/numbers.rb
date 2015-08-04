class Fixnum
  define_method(:numbers) do
    base_number = { 1 =>"one", 2 =>"two", 3 =>"three", 4 =>"four", 5 =>"five", 6 =>"six", 7 =>"seven", 8 =>"eight", 9 =>"nine", 10 =>"ten", 11 =>"eleven", 12 =>"twelve"}
    tens_numbers = {20 => "twenty", 30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety"}
    if self <= 12
      base_number.fetch(self)
    elsif self <= 19
      if self == 13
        "thirteen"
      elsif self == 15
        "fifteen"
      else
        base_number.fetch(self-10).concat("teen")
      end
    elsif self < 100
      tens_numbers.fetch(self - self%10).concat(base_number.fetch(self%10))
    end
  end
end
