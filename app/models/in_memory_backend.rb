class InMemoryBackend
  def initialize
    @counter = 0
    @map = {}
  end

  def create(record)
    @counter = @counter + 1
    record.id ||= @counter
    map_for(record)[record.id] = record
  end

  def update(record)
    map_for(record)[record.id] = record
  end

  def delete(record)
    map_for(record).delete record.id
  end

  def find(klass, id)
    map_for_class(klass).fetch id
  end

  def all(klass)
    map_for_class(klass).values
  end

  def query(klass, selector)
    send "query_#{selector.class.name.underscore}", selector
  end

  private
  
  def map_for_class(klass)
    @map[klass.to_s.to_sym] ||= {}
  end

  def map_for(record)
    map_for_class(record.class)
  end
end