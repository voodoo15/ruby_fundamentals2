#Exercise 6
#Name:  Arnold Redoblado
#Date:  2016-03-23
#Purpose:  Create an application to edit and display an array of groceries in a list

#Initialize variables
to_exit = false #True exits loop
grocery_items = [
      "carrots",
      "toilet paper",
      "apples",
      "salmon"
    ].sort! #Sorted alphabetically in advance

while to_exit == false

    #Prompt user for option, end loop on exit
    puts "Please enter command [(a)dd, d(i)splay, (d)elete, c(h)eck, (c)ount, (w)hich, e(x)it]:  "
    choice = gets.chomp

    case choice

      #Add items to grocery array
      when "a"
        puts "Enter grocery item:"
        item = gets.chomp
        grocery_items.push(item.to_s)
        grocery_items.sort!
        puts "Grocery item added.  You need to pickup #{ item.to_s }."

      #Display groery items in array with asterisk
      when "i"
        grocery_items.sort!
        grocery_items.each do | x |
          puts "* #{ x }"
        end

      #Search for item and delete it if exists
      when "d"
        puts "Enter grocery item:"
        item = gets.chomp
        grocery_items.delete_if{ | list_item | list_item == item.to_s }
        puts "Grocery item deleted."

      #Display a count of how many items are in the grocery list
      when "c"
        puts "The number items in the grocery list is:  #{ grocery_items.count }"

      #Check if an item is in the grocery list and display if item is in the list or not
      when "h"
        puts "Enter grocery item:"
        item = gets.chomp

        #If item exits or not, tell user
        grocery_items.include?( item ) ? ( puts "Pick up #{ item.to_s }." ) : ( puts "You don't need to pick up #{ item.to_s }." )

        #Display which item is in the list if prompted
      when "w"
        puts "Which item do you want to see (enter number):  "
        item = gets.chomp

        item.to_i <= grocery_items.count ? ( puts "The item in position #{ item } is:  #{ grocery_items[item.to_i - 1] }" ) : ( puts "The position is not avaiable in the list." )

        #Turn on flag to exit loop and end application
      when "x"
        to_exit = true

      else
        puts "Error, try another command."
    end

  end
