class CreateSchools < ActiveRecord::Migration[5.0]
  def change
    create_table :schools do |s|
      s.string :title
      s.integer :room_number
    end 
  end
end
