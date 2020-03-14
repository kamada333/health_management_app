class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :image
      t.date :date
      t.string :title
      t.string :comment

      t.timestamps
    end
  end
end
