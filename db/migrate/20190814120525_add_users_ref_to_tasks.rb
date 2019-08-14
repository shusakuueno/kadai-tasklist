class AddUsersRefToTasks < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasks, :name, foreign_key: true
    add_reference :tasks, :email, foreign_key: true
    add_reference :tasks, :password_digest, foreign_key: true
  end
end
