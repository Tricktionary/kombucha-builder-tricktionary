# frozen_string_literal: true

class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.references :kombucha
      t.references :user
      t.integer :rating

      t.timestamps
    end
  end
end
