class CreateInvoices < ActiveRecord::Migration[6.1]
  def change
    create_table :invoices do |t|
      t.string :bill
      t.string :description
      t.string :quantity
      t.string :rate
      t.string :total
      t.string :bill_number
      t.string :date
      t.string :sn
      t.string :subject
      t.string :sub_total
      t.string :tax
      t.string :tax_amount
      t.string :grand_total
      t.string :client_name
      t.string :office_name
      t.string :client_address
      t.string :client_phone
      t.string :client_designation
      t.string :admin_name
      t.string :vat_no
      t.string :payment_type

      t.timestamps
    end
  end
end
