class CreateTippees < ActiveRecord::Migration[5.0]
  def change
    create_table :tippees do |t|
      t.text :first_name, null: false
      t.text :last_name, null: false
      t.text :photo_url
      t.text :payment_url, null: false

      t.timestamps null: false
    end
  end
end
