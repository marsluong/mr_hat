class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first
	  t.string :aka
      t.string :last
	  t.string :uid	
      t.timestamps
    end
  end

end
