class CreateTemperatureRanges < ActiveRecord::Migration[7.0]
  def change
    create_table :temperature_ranges do |t|
      t.string :range
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
