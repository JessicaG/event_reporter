require 'pry'

class Command
  attr_reader :filename

  def initialize(repo)
    @filename = repo
  end

  def load_file(filename)
    @filename
  end

  def general_help
    output = "Here are your options:"
    print output
    output
  end
  #
  # def help_command
  #   #output description of how to use the specific command
  # end
  #
  # def queue_count
  #   #output how many records are in the current queue
  # end
  #
  # def queue_clear
  #   #clear queue
  # end
  #
  # def queue_print
  #   #print out tab-delimited data table with header row (lastname, firstname, etc)
  # end
  #
  # def queue_print_by_attribute
  #   #print data table sorted by specified attribute
  # end
  #
  # def queue_save_to_filename
  #   #export current queue to specified filename as a CSV
  # end
  #
  # def attribute_criteria
  #   #load queue with all records matching criteria for the given attribute (ex. find zipcode 11111)
  # end

end



# def self.read(filename, klass)
#    rows = CSV.open(filename, headers: true, header_converters: :symbol)
#    objects = rows.map {|row|
#      klass.new(row)
#    }
#    new objects
#  end
#
#  attr_reader :objects
#  def initialize(objects)
#    @objects = objects
#  end
#
#  def find_by(attribute, value)
#    objects.select {|object| object.send(attribute) == value}
#  end
# end
# Files
