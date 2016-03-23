#Exercise 5
#Name:  Arnold Redoblado
#Date:  2016-03-23
#Purpose:  Create a method to convert a temperature in farenheit entered by the user
#          and convert to celsius and return to user

def convert_celsius(temp)

  temp_celsius = (temp.to_i - 32) * 5 / 9

  return temp_celsius.round(2)

end

puts "Convert to celsius:  "

temp = gets.chomp

puts "Temp in celsius is:  #{ convert_celsius(temp) }"
