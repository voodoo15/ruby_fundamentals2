#Exercise 6
#Name:  Arnold Redoblado
#Date:  2016-03-23
#Purpose:  Create an application to edit and display an array of groceries in a list

choice ||= ""
to_exit = false #True exits loop

while to_exit == false

    #Prompt user for option, end loop on exit
    puts "Enter Input (add, display, delete, exit):  "
    choice = gets.chomp

    case choice
        #Add items to grocery array
        when "add"
            puts "Enter grocery item:"
            item = gets.chomp
            grocery_items.push(item.to_s)
            puts "Grocery item added.  You need to pickup #{item.to_s}."

        #Display groery items in array with asterisk
        when "display"
            grocery_items.each do |x|
                puts "* #{x}"
            end

        #Search for item and delete it if exists
        when "delete"
            puts "Enter grocery item:"
            item = gets.chomp
            grocery_items.delete_if{ |list_item| list_item == item.to_s }
            puts "Grocery item deleted."

        #Turn on flag to exit loop and end application
        when "exit"
            to_exit = true

        else
            puts "Error!"
    end

  end
