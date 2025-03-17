class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    CARS_PER_HOUR * @speed * success_rate
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end

  private

  CARS_PER_HOUR = 221

  def success_rate
    if (1..4).include? @speed
      1
    elsif (5..8).include? @speed
      0.9
    elsif @speed == 9
      0.8
    else
      0.77
    end
  end
end
