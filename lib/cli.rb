class CLI
  def initialize
  end
end

# def load_filename
#   puts "Welcome to Event Reporter.\nLet's load your CSV file; Type your file name:"
#   csv_file = gets.strip.downcase
# end


def help
  #output listing of available commands
end

def help_command
  #output description of how to use the specific command
end

def Command_count
  #output how many records are in the current Command
end

def Command_clear
  #clear Command
end

def Command_print
  #print out tab-delimited data table with header row (lastname, firstname, etc)
end

def Command_print_by_attribute
  #print data table sorted by specified attribute
end

def Command_save_to_filename
  #export current Command to specified filename as a CSV
end

def attribute_criteria
  #load Command with all records matching criteria for the given attribute (ex. find zipcode 11111)
end
