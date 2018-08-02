class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.references :category
      t.string :price
      t.string :decimal

      t.timestamps
    end
  end
end
