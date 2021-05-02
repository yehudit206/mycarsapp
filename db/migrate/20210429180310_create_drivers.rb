class CreateDrivers < ActiveRecord::Migration[6.1]
  def change
    create_table :drivers do |t|
      t.text :name
      t.text :email
      t.date :birth

      t.timestamps
    end
  end
end
