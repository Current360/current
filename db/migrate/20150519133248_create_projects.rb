class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :challenge
      t.text :insight
      t.text :solution
      t.text :results
      t.string :quote
      t.string :cite
      t.integer :category
      t.string :main_image
      t.string :side_image1
      t.string :side_image2
      t.string :logo
      t.integer :capabilities

      t.timestamps
    end
  end
end
