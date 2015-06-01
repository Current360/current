class ChangeCompToStrings < ActiveRecord::Migration
  def change
    change_column :projects, :comp1, :string
    change_column :projects, :comp2, :string
    change_column :projects, :comp3, :string
    change_column :projects, :comp4, :string
    change_column :projects, :comp5, :string
  end
end
