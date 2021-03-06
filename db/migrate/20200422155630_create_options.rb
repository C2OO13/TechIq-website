class CreateOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :options do |t|
      t.string :answer
      t.string :letter
      t.integer :question_id
      t.timestamps
    end
    add_index :options, :question_id, name: "index_options_question_id"
  end
end
