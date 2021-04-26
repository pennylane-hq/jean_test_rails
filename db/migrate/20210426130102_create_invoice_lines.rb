class CreateInvoiceLines < ActiveRecord::Migration[6.1]
  def change
    create_table :invoice_lines do |t|
      t.references :invoice, index: true, foreign_key: true, null: false
      t.string :label, null: false

      t.decimal :amount, null: false, precision: 15, scale: 2
      t.decimal :tax, null: false, precision: 15, scale: 2

      t.timestamps
    end
  end
end
