class AddNameToSize < ActiveRecord::Migration[5.0]
  def change
    add_column :sizes, :name, :string
  end
end
