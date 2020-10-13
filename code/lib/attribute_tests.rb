class Food

  attr_reader :protein

  def initialize(protein)
    @protein = protein
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
bacon = Food.new(18)

bacon.protein = 20
puts bacon.protein
