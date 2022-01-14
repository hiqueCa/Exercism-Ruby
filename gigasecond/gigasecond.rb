class Gigasecond

  GIGASECOND_IN_SECONDS = 1000000000

  def self.from(datetime)
    datetime + GIGASECOND_IN_SECONDS
  end
end
