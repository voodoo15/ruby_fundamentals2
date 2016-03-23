#Exercise 6
#Name:  Arnold Redoblado
#Date:  2016-03-23
#Purpose:  Create an application to edit and display an array of groceries in a list

#Initialize variables
choice ||= ""
to_exit = false #True exits loop
grocery_items = ["carrots", "toilet paper", "apples", "salmon"]

while to_exit == false

    #Prompt user for option, end loop on exit
    puts "Enter Input (add, display, delete, check, count, exit):  "
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
            grocery_items.sort!
            grocery_items.each do |x|
                puts "* #{x}"
            end

        #Search for item and delete it if exists
        when "delete"
            puts "Enter grocery item:"
            item = gets.chomp
            grocery_items.delete_if{ |list_item| list_item == item.to_s }
            puts "Grocery item deleted."

        #Display a count of how many items are in the grocery list
        when "count"
          puts "The number items in the grocery list is:  #{grocery_items.count}"

        #Check if an item is in the grocery list and display if item is in the list or not
        when "check"
          puts "Enter grocery item:"
          item = gets.chomp

          #Flag if item exists from user prompt
          item_check_flag = false
          grocery_items.each { |item_check|
              item_check_flag = true if item_check == item
          }

          #Display to user if item is needed or not
          if item_check_flag == true
              puts "Pick up #{item.to_s}."
            else
              puts "You don't need to pick up #{item.to_s}."
          end

        #Turn on flag to exit loop and end application
        when "exit"
            to_exit = true

        else
            puts "Error!"
    end

  end
