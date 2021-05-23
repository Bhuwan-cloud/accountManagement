class AddDescriptionToEstimate < ActiveRecord::Migration[6.1]
  def change
    add_column :estimates, :description, :string
    add_column :estimates, :quantity, :string
    add_column :estimates, :rate, :string
    add_column :estimates, :total, :string
    add_column :estimates, :bill_number, :string
    add_column :estimates, :date, :string
    add_column :estimates, :sn, :string
    add_column :estimates, :subject, :string
  end
end
