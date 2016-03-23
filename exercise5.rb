#Exercise 5
#Name:  Arnold Redoblado
#Date:  2016-03-23
#Purpose:  Create a method to convert a temperature in farenheit entered by the user
#          and convert to celsius and return to user

def convert_celsius(temp)

  #Convert temperature to celsius and return value
  temp_celsius = (temp.to_i - 32) * 5 / 9

  return temp_celsius.round(2)

end

#Prompt user to enter temperature
puts "Convert to celsius (from farenheit):  "

temp = gets.chomp

#Call convert_celsius function and output to user
puts "Temp in celsius is:  #{ convert_celsius(temp) }"
