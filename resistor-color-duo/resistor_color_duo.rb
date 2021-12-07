class ResistorColorDuo
  COLORS_VALUES = {"black" => 0, "brown" => 1, "red" => 2, "orange" => 3,
  "yellow" => 4, "green" => 5, "blue" => 6, "violet" => 7, "grey" => 8, "white" => 9}
  
  def self.value(colors)
    resistance_value = 0
    number_of_colors = colors.count

    0.upto(1) do |i|
      color = colors[i]
      color_value = COLORS_VALUES[color]
      number_of_colors >= 2 && i == 0 ? (resistance_value += 10*color_value) : (resistance_value += color_value)
    end

    resistance_value
  end
end
