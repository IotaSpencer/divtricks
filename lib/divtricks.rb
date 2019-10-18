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
    self.to_i(10).even?
  end

  def div3
    self.to_i.to_s.split(/\S/)

  end
  def div4

  end
  def div5
    if self.ends_with(5) or self.ends_with(0)
    end

  end
  def div6
    if self.div2 and self.div3
    end

  end
  def div7

  end
  def div8

  end
  def div9

  end
  def div10

  end
  def div11

  end
  def div23

  end
  
  before :div2, :div3, :div4, :div5, :div6, :div7, :div8, :div9, :div10, :div11, :div23 do
    int_able?
  end
end
