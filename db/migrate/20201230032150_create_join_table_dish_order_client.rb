# frozen_string_literal: true

class CreateJoinTableDishOrderClient < ActiveRecord::Migration[6.1]
  def change
    create_join_table :orders, :clients do |t|
      # t.index [:order_id, :client_id]
      # t.index [:client_id, :order_id]
    end
  end
end
