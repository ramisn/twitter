class CreateRetweets < ActiveRecord::Migration[5.2]
  def change
    create_table :retweets do |t|
      t.integer :retweeter_id
      t.integer :retweet_id
      t.datetime :created_at
    end
    add_index :retweets, [:retweet_id, :retweeter_id]
  end
end
