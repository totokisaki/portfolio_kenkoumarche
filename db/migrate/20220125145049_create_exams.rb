class CreateExams < ActiveRecord::Migration[7.0]
  def change
    create_table :exams do |t|
      t.binary :exam_image
      t.string :exam_item
      t.string :exam_purpose
      t.text :exam_advice

      t.timestamps
    end
  end
end
