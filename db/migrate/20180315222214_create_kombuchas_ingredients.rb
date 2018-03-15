class CreateKombuchasIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :kombuchas_ingredients do |t|
      t.references :kombucha
      t.references :ingredient

      t.integer :amount
    end
  end
end
