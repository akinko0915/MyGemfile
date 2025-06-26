DISTANCE = 507
class NightBus
  def rude
    terminals.each do |terminal|
      if terminal == 'B4'
        leave_luggage
        get_on_bus
        break
      end
    end

    seat_numbers.each do |seat|
      sit_seat if seat == 'A8'
    end

    left_distance = DISTANCE

    begin
      if is_cold? || !is_uncomfortable?
        stay_awake
      else
        get_sleep
      end
      left_distance -= 1
    end while left_distance > 0

    arrive
  end
end