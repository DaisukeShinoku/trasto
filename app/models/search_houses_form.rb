class SearchHousesForm
  attr_accessor :houses
  attr_reader :category_id, :house_area_id

  def initialize(params)
    @category_id = params[:category_id]
    @house_area_id = params[:house_area_id]
    @houses = House.all
  end

  def result
    # houses = search_by_category || search_by_house_area
    # houses = search_by_house_area || search_by_category
    # houses = search_by_house_area && search_by_category
    # p search_by_house_area && search_by_category
    houses = search_by_all
    houses
  end

  private


  def search_by_all

    if !category_id.present? && !house_area_id.present?
      return houses
    end

    area_search = []
    category_search = []

    if house_area_id.present?
      house_area = HouseArea.find(house_area_id)
      area_search = house_area.houses
    end

    if category_id.present?
      category = Category.find(category_id)
      category_search = category.houses
    end

    houses = area_search.concat(category_search)
  end

  # def search_by_category
  #   p "CCCCCCCCCCCCCCCCCCCCCCCCCCCCCC"
  #   return houses unless category_id.present?
  #   category = Category.find(category_id)
  #   category.houses 
  # end

  # def search_by_house_area
  #   p "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
  #   return houses unless house_area_id.present?
  #   house_area = HouseArea.find(house_area_id)
  #   house_area.houses
  # end
end