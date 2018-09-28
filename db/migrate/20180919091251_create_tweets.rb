class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.string :tweet_text, limit: 140
      t.string :location
      t.references :user, index: true
      t.timestamps
    end
  end
end
