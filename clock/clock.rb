module ClockTimeMinutesFormatter
  
  def minutes_output_and_hour_adding(continuos_minutes)
    hours_and_minutes_from_continuos_minutes = {
      hour: continuos_minutes / 60,
      minutes: continuos_minutes % 60
    }
  end

end

class Clock
  include ClockTimeMinutesFormatter

  attr_reader :hour, :minute

  def initialize(hour: 0, minute: 0)
    @hour = (hour + minutes_output_and_hour_adding(minute)[:hour]) % 24
    @minute = minutes_output_and_hour_adding(minute)[:minutes]
  end

  def to_s
    hours = @hour.to_s
    minutes = @minute.to_s
    "#{hours.rjust(2, "0")}:#{minutes.rjust(2, "0")}"
  end

  def +(other_clock)
    total_hours = @hour + other_clock.hour
    total_minutes = @minute + other_clock.minute
    Clock.new(hour: total_hours, minute: total_minutes).to_s
  end

  def -(other_clock)
    total_hours = @hour - other_clock.hour
    total_minutes = @minute - other_clock.minute
    Clock.new(hour: total_hours, minute: total_minutes).to_s
  end

  def ==(other_clock)
    to_s == other_clock.to_s
  end
end
