class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description, limit: 300
      t.string :image
      t.string :budget

      t.timestamps
    end
  end
end
