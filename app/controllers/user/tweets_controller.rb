class User::TweetsController < ApplicationController
  before_action :logged_in_user
  before_action :correct_user,   only: :destroy

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = current_user.tweets.build(tweet_params)
    if @tweet.save
      flash[:success] = "ツブヤキしました!"
      redirect_to tweets_url
    else
      flash[:warning] = "ツブヤキに失敗しました"
      redirect_to tweets_url
    end
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    flash[:danger] = "ツブヤキを削除しました"
    redirect_to request.referrer || root_url
  end

  def index
    @tweet = Tweet.new
    @tweets = Tweet.all.first(20)
  end

  def show
    @tweet = Tweet.find(params[:id])
    @tweet_comments = @tweet.tweet_comments.all
    @tweet_comment = TweetComment.new
  end

  private

    def tweet_params
      params.require(:tweet).permit(:content, :tweet_picture)
    end

    def correct_user
      @tweet = current_user.tweets.find_by(id: params[:id])
      redirect_to root_url if @tweet.nil?
    end
end
