class CreateModelnames < ActiveRecord::Migration[5.0]
  def change
    create_table :modelnames do |t|
      t.string :fieldone
      t.string :fieldtwo
      t.integer :fieldthree

      t.timestamps
    end
  end
end
