class Customer

  def initialize(takeaway:)
    @takeaway = takeaway
  end

  def avaliable_dishes
    takeaway.formatted_menu
  end

  private

  attr_reader :takeaway

end
