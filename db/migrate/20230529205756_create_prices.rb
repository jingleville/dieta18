class CreatePrices < ActiveRecord::Migration[7.0]
  def change
    create_table :prices do |t|
      t.decimal :price
      t.string :option
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
