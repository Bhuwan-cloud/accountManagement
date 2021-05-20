class CreateEstimates < ActiveRecord::Migration[6.1]
  def change
    create_table :estimates do |t|
      t.string :bill

      t.timestamps
    end
  end
end
