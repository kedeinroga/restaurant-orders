class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :razon_social
      t.integer :document
      t.string :address

      t.timestamps
    end
  end
end
