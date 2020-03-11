class CreateHealths < ActiveRecord::Migration[5.2]
  def change
    create_table :healths do |t|
      t.date :date
      t.float :body_weight
      t.integer :condition

      t.timestamps
    end
  end
end
