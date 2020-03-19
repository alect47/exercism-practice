class Clock
  attr_reader :hour, :minute

  def initialize(hour: 0, minute: 0)
    @hour = hour
    @minute = minute % 60
  end

  def to_s
    h = '%02d' % hour
    m = '%02d' % minute
    "#{h}:#{m}"
  end
end
