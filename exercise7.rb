#Exercise 7
#Name:  Arnold Redoblado
#Date:  2016-03-23
#Purpose:  Create methods to control and modify a hash that contains data for previous cohorts

students = {
  :cohort1 => 34,
  :cohort2 => 42,
  :cohort3 => 22
}

def display_class( classes )

  #Outputs cohort and students to screen
  classes.each { | class_name, num_of_students |
    puts "#{ class_name }: #{ num_of_students } students"
  }

end

def count_all_students( classes )

  #Adds the student cohorts and returns total number of students
  total_students = 0

  classes.each { | class_name, num_of_students |
      total_students += num_of_students
    }

    return total_students
end

puts "Display initial classes"
display_class( students )

puts "Added cohort 4 to hash"
students[ :cohort4 ] = 43

puts "Display classes after additional cohort"
display_class( students )

puts "Expanding classes"
students = students.each { | class_name, num_of_students | students[ class_name ] = num_of_students * 1.05 }

puts "Display classes after expansion"
display_class( students )

puts "Deleting 2nd cohort"
students.delete( :cohort2 )

puts "Display classes after deletion"
display_class( students )

puts "Total number of students is: #{ count_all_students( students ).to_s }"
