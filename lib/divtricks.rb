#!/usr/bin/ruby
require 'super_callbacks'
class String
  include SuperCallbacks
  before :div2, :div3, :div4, :div5, :div6, :div7, :div8, :div9, :div10

  def int_able
    begin
      self.to_i
      true
    rescue => TypeError
      return 'String is not int-able'
      false
    end
  def div2

  end
end
