class Session
  attr_reader :title, :speaker
  def initialize(title, speaker)
    @title = title
    @speaker = speaker
  end

  def call_to_stage
    puts "#{@title} by #{@speaker}"
  end

  def start
    play_music
    connect_pc
    set_timer(20)
  end

  def finish(thoughts)
    leave_stage(@speaker)
    think_about(thoughts)
  end

  private
  def think_about(thoughts)
    puts thoughts
  end
end
