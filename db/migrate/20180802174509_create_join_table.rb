class CreateJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :categories, :items do |t|
      t.index [:category_id, :item_id]
      t.index [:item_id, :category_id]
    end
  end
end
