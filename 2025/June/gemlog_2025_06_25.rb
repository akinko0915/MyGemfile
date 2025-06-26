DISTANCE = 507

class Passenger
  attr_reader :sex
  def initialize(sex)
    @sex = sex
  end
end
class NightBus
  def initialize(seatmate)
    @seatmate= seatmate
  end

  def ride_shinjku_to_kyoto
    depart_from('Shinjuku')
    terminals.each do |terminal|
      if terminal == 'B4'
        leave_luggage
        get_on_bus
        break
      end
    end

    happy = false
    seat_numbers.each do |seat|
      if seat == 'A8'
        sit_seat
        happy = true if by_the_window?
      end
    end

    relief if check_seatmate(@seatmate) == :woman

    left_distance = DISTANCE

    begin
      if is_cold? || !is_uncomfortable?
        stay_awake
      else
        get_sleep
      end
      left_distance -= 1
    end while left_distance > 0

    arrive_in('Kyoto')
  end

  private
  def check_seatmate(passenger)
    passenger.sex
  end
end

seatmate = Passenger.new(:woman)
NightBus.new(seatmate).ride_shinjuku_to_kyoto
