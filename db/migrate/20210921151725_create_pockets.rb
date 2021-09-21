class CreatePockets < ActiveRecord::Migration[6.1]
  def change
    create_table :pockets do |t|
      t.string :name
      t.string :description
      t.string :imglink

      t.timestamps
    end
  end
end
