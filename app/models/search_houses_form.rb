class SearchHousesForm
  attr_accessor :houses
  attr_reader :category_id

  def initialize(params)
    @category_id = params[:category_id]
    @houses = House.all
  end

  def result
    houses = search_by_category

    houses
  end

  private

  def search_by_category
    return houses unless category_id.present?

    category = Category.find(category_id)
    category.houses
  end
end