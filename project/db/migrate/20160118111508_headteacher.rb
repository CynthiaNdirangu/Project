class Headteacher < ActiveRecord::Migration
  def up
    create_table :Headteacher do |t|
      
    	t.string "f_name", :limit => 40, :null => false
    	t.string "l_name", :limit => 40, :null => false
    	t.string "user_name", :limit => 40, :null => false

      t.timestamps null: false
    end
  end

  def down
    drop_table :Headteacher
  end
end
