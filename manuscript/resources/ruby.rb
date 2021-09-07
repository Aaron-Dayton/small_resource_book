# Creator: Aaron Dayton
# Date: Aug 10, 2021
class Distance

  # Both points must have the same number of idecies.
  def new(point_from, point_to)
    @point_from = point_from
    @point_to = point_to
    @distance = find_distance
  end

  private

  def find_distance
    point_length = @point_from.location.length - 1
    total = 0
    for index in 0..point_length
      curr_distance = @point_from.location[index] - @point_to.location[index]
      total += curr_distance ** 2
    end
    Math.sqrt total
  end
end
