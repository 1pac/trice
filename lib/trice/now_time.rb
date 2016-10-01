module Trice
  class NowTime
    def self.get
      if Trice.use_time_with_zone
        Time.zone.now
      else
        Time.now
      end
    end
  end
end
