class AddCompetencyToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :comp1, :integer
    add_column :projects, :comp2, :integer
    add_column :projects, :comp3, :integer
    add_column :projects, :comp4, :integer
    add_column :projects, :comp5, :integer
  end
end
