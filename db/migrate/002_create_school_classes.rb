class CreateSchoolClasses < ActiveRecord::Migration
  def change
    create_table :school_classes do |t|
      t.string :title, default: "null"
      t.integer :room_number, default: "null"

      t.timestamps null: false
    end
  end
end
