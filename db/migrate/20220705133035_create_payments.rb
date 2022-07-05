class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.bigint :author_id
      t.string :name
      t.float :amount
      t.index :author_id

      t.timestamps
    end
    add_foreign_key :payments, :users, column: :author_id, on_delete: :cascade
  end
end
