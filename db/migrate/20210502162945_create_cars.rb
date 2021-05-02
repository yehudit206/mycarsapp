class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.text :title
      t.text :type_car
      t.text :color

      t.timestamps
    end
  end
end
