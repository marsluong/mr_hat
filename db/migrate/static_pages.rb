class StaticPages <ActiveRecord::Migration
	def change
		create_table :static_pages do |t|
			t,string :first
			t.string :last
		end
	end
end
