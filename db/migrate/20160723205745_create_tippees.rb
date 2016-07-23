class CreateTippees < ActiveRecord::Migration[5.0]
  def change
    create_table :tippees do |t|
      t.string :first_name
      t.string :last_name
      t.string :photo_url
      t.string :payment_url

      t.timestamps
    end
  end
end
