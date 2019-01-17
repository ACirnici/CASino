class AddServiceToLoginAttempts < ActiveRecord::Migration
  def up
    add_column :casino_login_attempts, :service, :string
  end

  def down
    remove_column :casino_login_attempts, :service
  end
end
