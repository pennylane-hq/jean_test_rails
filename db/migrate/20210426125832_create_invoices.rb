class CreateInvoices < ActiveRecord::Migration[6.1]
  def change
    create_table :invoices do |t|
      t.date :date
      t.date :deadline

      t.timestamps
    end
  end
end
