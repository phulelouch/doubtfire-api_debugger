class AddAbilityForGradedTasks < ActiveRecord::Migration[4.2]
  def change
    add_column :task_definitions, :is_graded, :boolean, default: false
    add_column :tasks, :grade, :integer, default: nil
  end
end
