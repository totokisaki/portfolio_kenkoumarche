class CreateCheckups < ActiveRecord::Migration[7.0]
  def change
    create_table :checkups do |t|
      t.binary :checkup_image
      t.string :checkup_item
      t.string :checkup_purpose
      t.text :checkup_advice

      t.timestamps
    end
  end
end
