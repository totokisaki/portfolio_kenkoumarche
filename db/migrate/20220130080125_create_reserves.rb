class CreateReserves < ActiveRecord::Migration[7.0]
  def change
    create_table :reserves do |t|
      t.date :reserve_date
      t.time :reserve_time
      t.integer :user_id
      t.integer :exam_id

      t.timestamps
    end
  end
end
