module DivTricks
  class Obj
    # @param [Integer] number
    # @param [Boolean] divisible
    def self.add_field(number, divisible)
      self.define_method "divby#{number}?" do 
        divisible
      end
    end
  
    def initialize(answers = {})
      answers.each do |number, divisible|
        field = "#{number.tr('div', '')}"
        self.class.add_field(field, divisible)

      end
    end
    def self.parse(answers = {})
      new(answers)
      
    end
    def to_s
      inspect.dup
    end
    def inspect
      outputs = []
      meths = methods.select do |m|

       m =~ /^divby[\d]+\?$/ 
      end
      meths.each do |m|
        outputs << "#{m.to_s.tr('divby', '').tr('?', '')}=#{send(m)}"
      end
      outputs.sort! {|a,b| a.to_i <=> b.to_i}
      "#<DivTricks::Result #{outputs.join(' ')} >"
    end
  end
end