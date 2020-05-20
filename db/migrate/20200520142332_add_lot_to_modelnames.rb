class AddLotToModelnames < ActiveRecord::Migration[5.0]
  def change
    add_column :modelnames, :lot, :integer
  end
end
