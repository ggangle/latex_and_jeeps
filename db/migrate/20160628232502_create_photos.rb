class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.text :caption
      t.string :image_url
      t.integer :album_id

      t.timestamps null: false
    end
  end
end
