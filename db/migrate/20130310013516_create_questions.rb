class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question
      t.string :answer
      t.integer :viewcount
      t.integer :category_id
      t.integer :isanswerd

      t.timestamps
    end
  end
end
