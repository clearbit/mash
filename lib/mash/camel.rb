class Mash::Camel < Mash
  protected

  def convert_key(key)
    key.to_s.underscore
  end

  def convert_value(val, duping=false) #:nodoc:
    case val
      when self.class
        val.dup
      when ::Hash
        val = val.dup if duping
        Mash::Camel.new(val)
      when ::Array
        val.map {|e| convert_value(e) }
      else
        val
    end
  end
end
