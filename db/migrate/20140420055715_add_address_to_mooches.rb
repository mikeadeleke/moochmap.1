class AddAddressToMooches < ActiveRecord::Migration
  def change
    add_column :mooches, :address, :string
  end
end
