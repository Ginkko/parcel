class Parcel
  def initialize(length, width, height, weight)
    @length = length
    @width = width
    @height = height
    @weight = weight
  end

  def volume
    @length.*(@width).*(@height)
  end

  def cost_to_ship(distance, speed)
    volume * @weight * distance / 100 * speed
  end


end
