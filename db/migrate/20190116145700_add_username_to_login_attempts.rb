class AddUsernameToLoginAttempts < ActiveRecord::Migration
  def up
    add_column :casino_login_attempts, :username, :string
    change_column_null :casino_login_attempts, :user_id, true
  end

  def down
    remove_column :casino_login_attempts, :username
    change_column_null :casino_login_attempts, :user_id, false
  end
end
