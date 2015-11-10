class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :content
      t.string :location
      t.boolean :part_time_c, null: false, default: false
      t.string :quantity
      
      t.string :experience
      t.string :education           
      t.string :major
      t.text   :note
      
      t.timestamps
    end
  end
end
