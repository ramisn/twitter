class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
    	t.references :tweet, index: true
      t.references :user, index: true
      t.datetime :created_at
    end
  end
end
