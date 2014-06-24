class PrintCommand

  def general_help
    output = "Here are your options: (q)uit, (p)rint queue, (s)ave queue to CSV, (c)ount records in your queue (cl)ear records in your queue, "
    print output
    output
  end

  def help_command_instructions
    ouput ="load <filename> Will erase any loaded data and parse your specified file.
            queue count Outputs how many records are in your current queue
            queue clear Empties your queue
            queue print Prints out a table with your headers and data.
            queue print by <attribute> Prints your data table sorted by the specified attribute like zipcode.
            queue save to <filename.csv> Export your current queue to the specified filename as a CSV.
            find <attribute> <criteria> Loads your queue with all records matching the criteria for the given attribute."
    print output
    output
  end

  def queue_print
  end

  def print_by(attribute, value)
    objects.print {|object| object.send(attribute) == value}
  end
end
