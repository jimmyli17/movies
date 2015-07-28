class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :imdb
      t.string :image
      t.string :name

      t.timestamps null: false
    end
  end
end
