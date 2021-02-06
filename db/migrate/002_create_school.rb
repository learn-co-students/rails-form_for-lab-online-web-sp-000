class CreateSchool < ActiveRecord::Migration
  def change
    create_table :school do |t|
      t.string :title
      t.integer :room_number

      t.timestamps null: false
    end
  end
end