class CreateMouths < ActiveRecord::Migration[7.0]
  def change
    create_table :mouths do |t|
      t.string :mouth_title
      t.text :mouth_contents
      t.string :mouth_star

      t.timestamps
    end
  end
end
