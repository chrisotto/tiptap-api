class CreateTips < ActiveRecord::Migration[5.0]
  def change
    create_table :tips do |t|
      t.decimal :amount, precision: 8, scale: 2
      t.boolean :processed
      t.integer :tippee_id

      t.timestamps
    end
  end
end
