class Raindrops
  RAINDROP_SOUNDS = {3 => "Pling", 5 => "Plang", 7 => "Plong"}

  def self.convert(number)
    raindrop_equivalent = ''
    RAINDROP_SOUNDS.each do |k, v|
      if number % k == 0
        raindrop_equivalent += v
      end
    end

    if raindrop_equivalent != ''
      raindrop_equivalent
    else
      number.to_s
    end
  end
end