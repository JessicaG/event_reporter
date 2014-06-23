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

  def find_by(attribute, value)
    objects.select {|object| object.send(attribute) == value}
  end

  def queue_count
    @queue.count
  end
  
  ##this seems repetitive to the def find_by(attribute, value).. is it needed?
  # def find_by_first_name(value)
  #   @queue << records.select { |record| record.first_name == value }
  # end

  def queue_clear
    @queue.clear
  end

end
