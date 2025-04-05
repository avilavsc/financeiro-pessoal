class CreateTransactions < ActiveRecord::Migration[7.2]
  def change
    create_table :transactions do |t|
      t.integer :transaction_type, null: false, default: 0 # 0: despesa, 1: receita
      t.decimal :value, precision: 10, scale: 2, null: false
      t.string :description
      t.date :date, null: false
      t.references :category, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
