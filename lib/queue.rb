class Command

  def initialize(filename)
    @filename = filename
  end

  def load_file(filename)
    @filename
  end



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
