class Questions < ActiveRecord::Migration
  def up
  	create_table :questions do |t|
  		t.string :question_text
  		t.string :choice_a
  		t.string :choice_b
  		t.integer :user_id
      t.integer :choice_a_amount
      t.integer :choice_b_amount
  	end
  end

  def down
  	drop_table :questions
  end
end

