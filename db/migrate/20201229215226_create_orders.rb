# frozen_string_literal: true

class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :room
      t.string :table
      t.references :dish, null: false, foreign_key: true

      t.timestamps
    end
  end
end
