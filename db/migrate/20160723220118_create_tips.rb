class CreateTips < ActiveRecord::Migration[5.0]
  def change
    create_table :tips do |t|
      t.decimal :amount, precision: 8, scale: 2, null: false, default: 0
      t.boolean :processed, null: false, default: false, index: true
      t.integer :tippee_id, null: false, index: true

      t.timestamps null: false
    end
  end
end
