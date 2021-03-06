class Backpack
  def initialize(attributes)
    @attributes = attributes
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

    if day_of_week == 'monday' || day_of_week == 'thursday'
      @items << 'gym shoes'
    end

    if day_of_week != 'saturday' && day_of_week != 'sunday'
      @items << 'packed lunch'
    elsif
      @items << 'snacks'
    end
  end

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
