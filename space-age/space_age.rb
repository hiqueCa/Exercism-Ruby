class SpaceAge

  attr_reader :seconds

  EARTH_TO_PLANETS_TIME_RATIO = {
    earth: 1.0,
    mercury: 0.2408467,
    venus: 0.61519726,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132
  }

  SECONDS_IN_YEAR_ON_EARTH = 31557600

  def initialize(seconds)
    @seconds = seconds
    @on_earth = on_(:earth)
  end

  def on_earth
    on_(:earth)
  end

  def on_mercury 
    on_(:mercury)
  end
  
  def on_venus 
    on_(:venus)
  end

  def on_mars 
    on_(:mars)
  end

  def on_jupiter
    on_(:jupiter)
  end

  def on_saturn
    on_(:saturn)
  end

  def on_uranus
    on_(:uranus)
  end

  def on_neptune
    on_(:neptune)
  end

  private

  def on_(planet)
    seconds / (SECONDS_IN_YEAR_ON_EARTH * EARTH_TO_PLANETS_TIME_RATIO[planet])
  end

end