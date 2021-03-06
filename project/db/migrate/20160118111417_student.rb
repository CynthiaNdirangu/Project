class Student < ActiveRecord::Migration
  def up
    create_table :Student do |t|
      
    	t.string "f_name", :limit => 40, :null => false
    	t.string "l_name", :limit => 40, :null => false
    	t.string "user_name", :limit => 40, :null => false

      t.timestamps null: false
    end
  end

  def down
    drop_table :Student
  end
end
