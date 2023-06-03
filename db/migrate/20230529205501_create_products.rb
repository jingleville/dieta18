class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.integer :name
      t.integer :code
      t.references :productsubgroup, null: false, foreign_key: true
      t.references :temperaturerange, null: false, foreign_key: true

      t.timestamps
    end
    add_index :products, :code, unique: true
  end
end
