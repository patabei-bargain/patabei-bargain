class CreateCproducts < ActiveRecord::Migration
  def change
    create_table :cproducts do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
