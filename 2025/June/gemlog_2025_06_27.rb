class Conversation
  def initialize(topic)
    @topic = topic
  end

  def talk
    puts "#{@topic}について話そう"
  end
end

class Revenue
  attr_reader :place, :floor, :special_feature
  def initialize(place, floor, special_feature)
    @place = place
    @floor = floor
    @special_feature = special_feature
  end
end

class DinnerParty
  def initialize(name, menu, revenue, topics)
    @name = name
    @menu = menu
    @revenue = revenue
    @topics = topics
  end

  def enjoy!
    surprise(@revenue.special_feature)
    relief if find_senpai("anzu")
    Conversation.new("自己紹介").talk

    cheer

    @menu.each do |food|
      @topics.each do |topic|
        eat_food(food)
        Conversation.new(topic).talk
      end
    end

    fantastic_community = true
  end
end

menu = ["種々前菜の盛り合わせ", "カニ入りフカヒレスープ", "揚げ物二種", "海鮮類の強火炒め", "えびの唐辛子炒め", "豚のスペアリブの甘酢掛け", "山東餃子", "餅入り揚げ餅", "杏仁豆腐"]
revenue = Revenue.new("東華菜館", 2, "日本最古のエレベーター")
topics = ["プログラミングスクール", "AI", "車"]
DinnerParty.new("ANDPAD × 関西Ruby会議08 Day0 晩餐会", menu, revenue, topics).enjoy!

