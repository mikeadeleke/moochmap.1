class CreateMooches < ActiveRecord::Migration
  def change
    create_table :mooches do |t|
      t.string :description
      t.references :user, index: true

      t.timestamps
    end
  end
end
