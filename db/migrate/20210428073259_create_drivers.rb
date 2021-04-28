class CreateDrivers < ActiveRecord::Migration[6.1]
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :email
      t.date :BirthDate

      t.timestamps
    end
  end
end
