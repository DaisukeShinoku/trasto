class AddTweetPictureToTweets < ActiveRecord::Migration[6.0]
  def change
    add_column :tweets, :tweet_picture, :string
  end
end
