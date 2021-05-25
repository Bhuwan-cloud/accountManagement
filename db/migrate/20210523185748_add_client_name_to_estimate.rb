class AddClientNameToEstimate < ActiveRecord::Migration[6.1]
  def change
    add_column :estimates, :client_name, :string
    add_column :estimates, :office_name, :string
    add_column :estimates, :client_address, :string
    add_column :estimates, :client_phone, :string

  end
end
