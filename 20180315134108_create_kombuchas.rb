class CreateKombuchas < ActiveRecord::Migration[5.1]
  def change
    create_table :kombucha do |t|
      t.string :name
      t.string :brand
      t.string :fizziness_level

      t.timestamps
    end
  end
end
