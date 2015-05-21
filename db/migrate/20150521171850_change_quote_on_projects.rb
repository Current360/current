class ChangeQuoteOnProjects < ActiveRecord::Migration
  def change
    change_column :projects, :quote, :text
  end
end
