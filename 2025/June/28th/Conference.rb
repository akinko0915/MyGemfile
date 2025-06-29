require_relative './Session'

class Conference
  attr_reader :name, :venue, :prefecture, :sessions
  @is_dark = false
  def initialize(name, venue, prefecture, sessions_data)
    @name = name
    @venue = venue
    @prefecture = prefecture
    @sessions = sessions_data.map do |data|
      session = Session.new(data[:title], data[:speaker])
      { session: session, thoughts: data[:thoughts]}
    end
  end

  def start_sessions
    @sessions.each do |speech|
      session = speech[:session]
      @is_dark = true
      session.start
      session.call_to_stage
      session.finish(speech[:thoughts])
      @is_dark = false
    end
  end
end