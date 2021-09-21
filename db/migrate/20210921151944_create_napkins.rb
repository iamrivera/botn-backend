class CreateNapkins < ActiveRecord::Migration[6.1]
  def change
    create_table :napkins do |t|
      t.string :headline
      t.string :content
      t.string :sourcelink
      t.string :pocket_id

      t.timestamps
    end
  end
end
