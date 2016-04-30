class CreateOrigins < ActiveRecord::Migration
  def change
    create_table :origins do |t|
      t.string :country
      t.string :region

      t.timestamps null: false
    end
  end
end
