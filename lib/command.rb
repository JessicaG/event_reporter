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

  def find_by(attribute, value)
    objects.select {|object| object.send(attribute) == value}
  end

  def queue_count
    records.select {|records| record.count}
  end

  ##can we use drop for all records in array?##
  def queue_clear
    records.selec{|records| record.delete}
  end

  def records.clear
    @
  end


    # def help_command
    #   #output description of how to use the specific command
    # end
    #

end
