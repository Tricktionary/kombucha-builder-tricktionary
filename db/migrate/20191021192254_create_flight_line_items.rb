# frozen_string_literal: true

class CreateFlightLineItems < ActiveRecord::Migration[5.2]
  def change
    create_table :flight_line_items do |t|
      t.references :kombucha
      t.references :flight
      t.timestamps
    end
  end
end
