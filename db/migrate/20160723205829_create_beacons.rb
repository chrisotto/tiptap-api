class CreateBeacons < ActiveRecord::Migration[5.0]
  def change
    create_table :beacons do |t|
      t.integer :tippee_id, null: false, index: true

      t.timestamps null: false
    end
  end
end
