class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.text :overview
      t.text :post_url
      t.float :rating

      t.timestamps
    end
  end
end
