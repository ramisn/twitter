class ChangeColumnInRetweets < ActiveRecord::Migration[5.2]
  def change
  	rename_column :retweets, :retweet_id, :source_tweet_id
  end
end
