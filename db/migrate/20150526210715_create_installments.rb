class CreateInstallments < ActiveRecord::Migration
  def change
    create_table :installments do |t|
      t.decimal :amount, precision: 10, scale: 2
      t.integer :number
      t.account :references

      t.timestamps null: false
    end
  end
end
