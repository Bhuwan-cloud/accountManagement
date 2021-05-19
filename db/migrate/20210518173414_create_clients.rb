class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :project
      t.string :member
      t.string :started
      t.string :completed

      t.timestamps
    end
  end
end
