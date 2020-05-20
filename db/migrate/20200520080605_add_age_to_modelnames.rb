class AddAgeToModelnames < ActiveRecord::Migration[5.0]
  def change
    add_column :modelnames, :age, :integer
  end
end
