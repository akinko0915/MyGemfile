require 'date'
require 'time'

class CommuteRoutine
  def commute
    return if weekday? && commuting_time?
    return if crowded?

    get_on

    if vacant_seat?
      get_seat unless old_person_exists?
      read_book
    else
      get_strap
      open_instagram || read_news
    end
  end

  private

  def weekday?
    today = Date.today
    !today.saturday? && !today.sunday?
  end

  def commuting_time?
    now = Time.now
    now >= Time.parse("07:00") && now <= Time.parse("09:30")
  end
end