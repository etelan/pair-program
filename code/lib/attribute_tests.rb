class Food

  attr_accessor :protein

  def initialize()
    @protein = 0
  end


  # # attr_read
  # def protein
  #   @protein
  # end
  #
  # # attr_write
  # def protein=(value)
  # @protein = value
  # end

end
bacon = Food.new()

bacon.protein = 20
puts bacon.protein
