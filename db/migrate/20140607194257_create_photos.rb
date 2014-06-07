class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :photo_name
      t.integer :place_id
      t.string :image

      t.timestamps
    end
  end
end
