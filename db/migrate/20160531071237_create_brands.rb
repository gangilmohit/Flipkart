class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.integer :product_id
      t.integer :category_id
      t.string :name

      t.timestamps null: false
    end
  end
end
