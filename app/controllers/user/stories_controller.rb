class User::StoriesController < ApplicationController
  before_action :logged_in_user

  def index
    @house = House.find(params[:house_id])
    @stories = Story.where(house_id: @house.id)
  end

  def show
    @story = Story.find(params[:id])
  end

  def new
    @house = House.find(params[:house_id])
    @story = Story.new
  end

def create
  @house = House.find(params[:house_id])
  @story = current_user.stories.build(story_params)
    if @story.save
      redirect_to house_story_url(@story)
    else
      flash.now[:success] = "Welcome to the Sample App!"
      render action: :new
    end
end

def edit
  @story = Story.find(params[:id])
end

def update
  @story = Story.find(params[:id])
    if @story.update(story_params)
      redirect_to house_story_url(@story)
    else
      render action: :edit
    end
end

def destroy
  @story = Story.find(params[:id])
  @house = @story.house
  @story.destroy
  derirect_to story_house_url(@house)
end

  private

  def story_params
    params.require(:story).permit(:title, :content, :visit_date, :story_image)
  end

  def house_params
    params.require(:house).permit(:name, :postcode, :prefecture_code, :address, :domitory_price, :private_price,
                                  :copy, :introduction, :house_image, :is_valid, {:category_ids => []})
  end

    # ログイン済みユーザーかどうか確認
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

    # 正しいユーザーかどうか確認
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
end
