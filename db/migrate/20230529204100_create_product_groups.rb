class CreateProductGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :product_groups do |t|
      t.string :name

      t.timestamps
    end
  end
end
