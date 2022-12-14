class AddTimeExceeded < ActiveRecord::Migration[4.2]
  def change
    if TaskStatus.where(name: 'Time Exceeded').count < 1
      TaskStatus.create name:"Time Exceeded", description: "You did not submit or complete the task before the appropriate deadline."
    end
  end
end
