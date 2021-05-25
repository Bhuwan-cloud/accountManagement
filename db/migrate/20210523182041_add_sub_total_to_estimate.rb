class AddSubTotalToEstimate < ActiveRecord::Migration[6.1]
  def change
    add_column :estimates, :sub_total, :string
    add_column :estimates, :tax, :string
    add_column :estimates, :tax_amount, :string
    add_column :estimates, :grand_total, :string


  end
end
