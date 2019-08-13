class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.references :user, foreign_key: true
      t.string :answer_one
      t.string :answer_two

      t.timestamps
    end
  end
end
