#Exercise 7
#Name:  Arnold Redoblado
#Date:  2016-03-23
#Purpose:  Create methods to control and modify a hash that contains data for previous cohorts

exit_flag = false #true to exit

students = {
  :cohort1 => 34,
  :cohort2 => 42,
  :cohort3 => 22
}

def display_class( classes )
  classes.each { | class_name, num_of_students |
    puts "#{ class_name }: #{ num_of_students } students"
  }

end

while exit_flag == false

  puts "Enter command [(d)isplay]:"
  choice = gets.chomp

  case choice
    when "d"
      display_class( students )
    end
end
