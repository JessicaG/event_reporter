class Command
  attr_reader :repo, :queue, :filename

  def initialize(filename)
    @records  = AttendeeRepo.new.build_records
    @queue    = []
    @filename = filename
  end

  def load_file(filename)
    @filename
  end
  #
  # def find_by(attribute, value)
  #   objects.select {|object| object.send(attribute) == value}
  # end

  def queue_count
    @queue.count
  end

  def find_by_first_name(value)
    @queue << records.select { |record| record.first_name == value }
  end

  # ##can we use drop for all records in array?##
  # def queue_clear
  #   records.select {|records| record.delete}
  # end





  # def find_by(attribute, value)
  #   objects.select {|object| object.send(attribute) == value}
  # end
  #
  # def queue_count
  #   records.select {|records| record.count}
  # end
  #
  # ##can we use drop for all records in array?##
  # def queue_clear
  #   records.select {|records| record.delete}
  # end
  #
  # # def records.clear
  #
  # end


    # def help_command
    #   #output description of how to use the specific command
    # end
    #

end
