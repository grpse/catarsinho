class RemoveBudgetFromProjects < ActiveRecord::Migration[5.1]
  def change
    remove_column :projects, :budget, :string
  end
end
