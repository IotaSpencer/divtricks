require 'divtricks/version'
require 'after_do'
class String
  extend AfterDo


  def self.int_able?
    begin
      self.to_i
      true
    rescue TypeError
      raise 'String is not int-able'
    rescue StandardError
      false
    end
  end

  def div2
    self.to_i.even?
  end

  def div3
    intermediate = self.to_i.to_s.split(//).map{|i| i.send(:to_i)}.sum
    if intermediate.to_i > 12 
      intermediate.to_s.div3
    end
    if intermediate.remainder(3) == 0
      true
    else false
    end

  end
  # @returns [Boolean] whether **self** is divisible by 4
  def div4
    self.slice(-2,2).to_i.remainder(4) == 0 ? true : false
  end
  def div5
    if self.to_s&.end_with?(5.to_s) or self.to_s&.end_with?(0.to_s)
      true
    else
      false
    end

  end
  def div6
    if self.div2 and self.div3
      true
    else false
    end

  end
  def div7

  end
  def div8
    self.to_s.slice(-3, 3)
  end
  def div9
    intermediate = self.to_i.to_s.split(//).map{|i| i.send(:to_i)}.sum
    if intermediate.to_i > 12 
      intermediate.to_s.div9
    end
    if intermediate.remainder(9) == 0
      true
    else false
    end
  end
  def div10
    self.to_s&.end_with?('0') ? true : false
  end
  def div11

  end
  def div23

  end
  
  before :div2, :div3, :div4, :div5, :div6, :div7, :div8, :div9, :div10, :div11, :div23 do
    int_able?
  end
end
