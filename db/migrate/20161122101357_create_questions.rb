class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :form_id
      t.string :title
      t.string :answer_type

      t.timestamps null: false
    end
  end
end
