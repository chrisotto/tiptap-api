class CreateTippees < ActiveRecord::Migration[5.0]
  def change
    create_table :tippees do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :photo_url
      t.string :payment_url, null: false

      t.timestamps null: false
    end
  end
end
