class Event

  attr_reader :name, :food_trucks

  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(food_truck)
    @food_trucks << food_truck
  end

  def food_truck_names
    @food_trucks.map do |food_truck|
      food_truck.name
    end
  end

  def food_trucks_that_sell(item)
    truck_by_item = []
    @food_trucks.each do |food_truck|
      if food_truck.inventory.include? item
        truck_by_item << food_truck
      end
    end
    truck_by_item
  end

  def sorted_item_list

  end
end
