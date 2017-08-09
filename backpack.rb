class Backpack
  def initialize(attributes)
    @attributes = attributes # A hash containing day_of_week and weather keys
    @items = []
    prepare_backpack
  end

  def items_to_pack
    @items
  end

  def the_basics
    @items << 'pants'
    @items << 'shirt'
  end

  def prepare_backpack
    # Set up local variables used by rest of prepare_backpack method
    weather = @attributes[:weather]
    day_of_week = @attributes[:day_of_week]

    # Ensure appropriate clothing is added to backpack
    if weather== 'rainy'
      the_basics
      @items << 'umbrella'

    elsif weather == 'cold'
      the_basics
      @items << 'jacket'

    else
      the_basics
    end

    # Ensure gym shoes are added to backpack if it's a gym day
    if day_of_week == 'monday' || day_of_week == 'thursday'
      # Add gym shoes to items
      @items << 'gym shoes'
    end

    # Bring a packed lunch on all weekdays
    if day_of_week != 'saturday' && day_of_week != 'sunday'
      @items << 'packed lunch'
    elsif false
      @items << 'snacks'
    end
  end

  # Prints a summary packing list for Melinda's backpack
  def my_packing_summary
    output = []
    output << "Melinda, here's your packing list!"
    output << "Day: #{@attributes[:day_of_week]}, Weather: #{@attributes[:weather]}"
    output << ""

    @items.each do |item|
      output << "- #{item}"
    end
    output.join("\n")
  end

end
