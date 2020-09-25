class CreateSchoolClass < ActiveRecord::Migration[4.2]
    def change
      create_table :school_class do |t|
        t.string :title
        t.integer :room_number
  
        t.timestamps null: false
      end
    end
  end