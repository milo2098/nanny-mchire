class CreateGrandparents < ActiveRecord::Migration[7.1]
  def change
    create_table :grandparents do |t|
      t.string :skill
      t.string :description
      t.integer :price
      t.integer :experience
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
