class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name
      t.text :desc
      t.float :ranking
      t.boolean :is_deleted

      t.timestamps
    end
  end
end
