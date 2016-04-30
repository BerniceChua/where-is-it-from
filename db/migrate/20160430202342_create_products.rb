class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :url
      t.integer :brand_id
      t.boolean :is_ethical

      t.timestamps null: false
    end
  end
end
