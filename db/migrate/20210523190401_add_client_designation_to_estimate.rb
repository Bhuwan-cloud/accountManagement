class AddClientDesignationToEstimate < ActiveRecord::Migration[6.1]
  def change
    add_column :estimates, :client_designation, :string
  end
end
