class Retaurant
  attr_reader :name, :space

  def initialize(name, space)
    @name = name
    @space = space
  end

  def guide_customer
    puts "お食事されたい場所を選んでください"
    guide_to(@space)
  end

  def give_menu
    {
      # メニューと値段はテキトーです
      food: [
        { name: "朝食セット", price: 1800, amount: 400 },
        { name: "サンドイッチ", price: 1000, amount: 250 },
        { name: "ナポリタン", price: 900, amount: 300 }
      ]
    }
  end

  def guide_to(place)
    puts "こちらの#{place}へどうぞ。"
  end
end

class Breakfast
  def initialize(restaurant)
    @restaurant = restaurant
  end

  def start
    return unless open?

    @restaurant.guide_customer
    menu = @restaurant.give_menu
    food = menu[:food].find { |item| item[:name] == "朝食セット"}
    amount = food[:amount]
    puts "いただきます"

    while amount > 0
      see_nature
      read_book
      amount -= 1
    end

    puts "ごちそうさまでした"

    reflect_three_month_living_alone
    pay(food[:price])
    leave
  end
end

inoda_coffee = Retaurant.new("イノダコーヒー本店", :old_building)
breakfast = Breakfast.new(inoda_coffee)
breakfast.start