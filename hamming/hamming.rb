class Hamming

  def self.same_size?(strand_1, strand_2)
    strand_1.length == strand_2.length
  end

  def self.compute(strand_1, strand_2)
    count = 0
    if same_size?(strand_1, strand_2)
      strand_1.split("").each_with_index do |n, i|
        if n != strand_2.split("")[i]
          count += 1
        end
      end
    else
      raise ArgumentError, "Strands of different sizes!!"
    end

    count
  end
end
