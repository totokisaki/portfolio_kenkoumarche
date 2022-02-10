class CreateKcals < ActiveRecord::Migration[7.0]
  def change
    create_table :kcals do |t|
      t.integer :height
      t.integer :weight
      t.integer :activities

      t.timestamps
    end
  end
end
