class AddAgeToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :age, :date
  end
end
