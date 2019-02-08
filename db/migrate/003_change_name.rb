class ChangeName < ActiveRecord::Migration
  def change
    rename_table :schoolclasses, :school_classes 
  end
end