class CreateMovieLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :movie_likes do |t|
      t.integer :movie_id
      t.integer :likes
      t.integer :dislikes

      t.timestamps
    end
  end
end
