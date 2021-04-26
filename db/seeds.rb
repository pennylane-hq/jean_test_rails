# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

50.times do
  invoice = Invoice.new(date: Date.current + Random.rand(-30..30).days)
  invoice.deadline = invoice.date + Random.rand(0..60).days
  invoice.save!

  Random.rand(1..6).times.map do
    amount = (100 * Random.rand).round(2)
    InvoiceLine.create!(
      label: Faker::Creature::Animal.name,
      amount: amount,
      tax: (amount * 0.2),
      invoice_id: invoice.id,
    )
  end
end
