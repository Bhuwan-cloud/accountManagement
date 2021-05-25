class AddAdminNameToEstimate < ActiveRecord::Migration[6.1]
  def change
    add_column :estimates, :admin_name, :string
    add_column :estimates, :vat_no, :string
    add_column :estimates, :payment_type, :string

  end
end
