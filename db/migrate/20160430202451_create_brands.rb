class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.string :category
      t.string :url
      t.boolean :is_ethical

      t.timestamps null: false
    end
  end
end
