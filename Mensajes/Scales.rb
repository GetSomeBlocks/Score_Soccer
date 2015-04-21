module MajorScales
  def majorNum
    @numNotes = 7 if @numNotes.nil?
    @numNotes # Return 7
  end
end

module PentatonicScales
  def pentaNum
    @numNotes = 5 if @numNotes.nil?
    @numNotes # Return 5?
  end
end

module LessScales
  def lessNum
    @numNotes = 6 if @numNotes.nil?
    @numNotes # Return 6
  end
end


class ScaleDemo
  include MajorScales
  include PentatonicScales
  include LessScales
  def initialize
    puts majorNum # Should be 7
    puts pentaNum # Should be 5
    puts lessNum # Should be 6
  end
end

ScaleDemo.new
