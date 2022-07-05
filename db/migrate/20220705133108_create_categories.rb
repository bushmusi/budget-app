class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.bigint :author_id
      t.string :name
      t.string :icon
      t.index :author_id

      t.timestamps
    end
    add_foreign_key :categories, :users, column: :author_id, on_delete: :cascade
  end
end
