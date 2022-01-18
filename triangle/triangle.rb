require 'set'

class Triangle
  attr_reader :sides

  def initialize(sides)
    @sides = sides
  end

  def equilateral?
    triangle? && number_of_unique_sides == 1
  end

  def isosceles?
    equilateral? || (triangle? && number_of_unique_sides == 2)
  end

  def scalene?
    triangle? && number_of_unique_sides == 3
  end

  private

  def number_of_unique_sides
    Set.new(sides).size
  end

  def triangle?
    !null_sides? && respects_triangle_inequality?
  end

  def respects_triangle_inequality?
    major_side <= two_minor_sides.sum
  end     
    
  def major_side
    sides.max
  end

  def two_minor_sides
    sides.sort { |a, b| b <=> a }[1..2]
  end

  def null_sides?
    sides.include?(0)
  end
end