class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.string :content
      t.boolean :is_right
      t.references :questions, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
