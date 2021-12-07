class Series

  def initialize(series)
    @series = series
  end

  def slices(length)
    raise ArgumentError unless sliceable?(length)
    
    slices = []
    possible_slices(length).times do |i|
      this_slice = @series[i...(i+length)]
      slices << this_slice
    end

    slices
  end

  private
  def sliceable?(length)
    length <= @series.length
  end

  def possible_slices(length)
    @series.length - length + 1
  end
end