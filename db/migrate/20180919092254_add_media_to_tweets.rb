class AddMediaToTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :media, :string
  end
end
