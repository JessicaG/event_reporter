class Command
  attr_reader :repo, :queue, :filename

  def initialize(filename)
    @records  = AttendeeRepo.new.build_records
    @queue    = []
    @session  = 0
    @filename = filename
  end

  def load_file(filename)
    @filename
  end

  # def find_by(attribute, value)
  #   objects.select {|object| object.send(attribute) == value}
  # end

  def queue_count
    @queue.count
  end

  def find_by_first_name(value)
    @queue << records.select { |record| record.first_name == value }
  end

  def queue_clear
    @queue.clear
  end








def save_thank_you_letters(id,form_letter)
  Dir.mkdir("output") unless Dir.exists?("output")

  filename = "output/thanks_#{id}.html"

  File.open(filename,'w') do |file|
    file.puts form_letter
  end
end



  def save_to_csv
    filename = "output/queue_results.csv"



  end




  # def find_by(attribute, value)
  #   objects.select {|object| object.send(attribute) == value}
  # end
  #
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
