class AddBioToUsers < ActiveRecord::Migration
  def change
    add_column :users, :bio, :textarea
  end
end
