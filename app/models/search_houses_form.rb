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
    houses = search_by_hoge
    houses
  end

  private


  def search_by_hoge

    if !category_id.present? && !house_area_id.present?
      p 8888888888888888888888
      return houses
    end

    area_search = []
    cate_search = []

    if house_area_id.present?
      house_area = HouseArea.find(house_area_id)
      area_search = house_area.houses
      p 22222222222222222222
      p area_search
    end

    if category_id.present?
      category = Category.find(category_id)
      cate_search = category.houses
      p 333333333333333
      p cate_search
    end

    houses = area_search.concat(cate_search)

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