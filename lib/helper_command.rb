require 'csv'
require_relative './search_command'

class PrintCommand

  def general_help
    output = "Here are your options:\n
              (find <attribute>) to find records in your file by their header line,\n
              (queue count) to discover the number of records in your current queue,\n
              (queue print) to display the records in your queue,\n
              (queue print by <attribute>) displays your queue sorted by the specified attribute like zipcode,\n
              (queue save to <example_filename>) to save your current queue to a csv with a specified filename,\n
              (queue clear) remove all the records in your current queue,\n
              (quit) to leave the program completely.\n"
    print output
    # output
  end

  def help_with_shell_commands
    case command
    when "help queue find" || "help queue find #{attribute}" || "help find"
      puts 'To search by a certain attribute, you must mimic your attribute how it is specificed in your header CSV file ie first_name or homephone'
    when "help queue count"
      puts 'Output how many records are in the current queue'
    when "help queue print"
      puts 'Output to screen all records you have in your current queue'
    when "help queue print by" || "help queue print" || "help queue print by #{attribute}"
      puts 'To print by a certain attribute, you must mimic your attribute how it is specified in your find command and in your header file ie last_name or zipcode'
    when "help queue save to" || "help queue save" || "help save" || "help queue save to #{filename}"
      puts 'Output is saved as a CSV file to your output folder under the name specified after save to'
    when "help clear" || "help queue clear"
      puts 'This will clear your current queue'
      else
      puts "That is not a valid command, please try again. <help> lists out the commands available."
      end
  end

end
