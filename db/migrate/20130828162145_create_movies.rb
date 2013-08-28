class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :imdb_id
      t.string :imdb_url
      t.string :title
      t.string :year
      t.decimal :rating
      t.string :plot

      t.timestamps
    end
  end
end
