class AssemblyLine

  PRODUCTION_RATE_PER_HOUR = 221
  
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    @speed * PRODUCTION_RATE_PER_HOUR.to_f * success_rate
  end

  def success_rate
    case @speed
    when 1..4
      1.to_f
    when 5..8
      0.9
    when 9
      0.8
    when 10
      0.77
    end
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).floor
  end
end
