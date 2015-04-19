class Questions < ActiveRecord::Migration
  def up
  	create_table :questions do |t|
  		t.string :question_text
  		t.string :choice_a
  		t.string :choice_b
  		t.integer :user_id
  	end
  end

  def down
  	drop_table :questions
  end
end

