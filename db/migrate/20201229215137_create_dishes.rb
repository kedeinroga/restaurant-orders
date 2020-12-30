# frozen_string_literal: true

class CreateDishes < ActiveRecord::Migration[6.1]
  def change
    create_table :dishes do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
