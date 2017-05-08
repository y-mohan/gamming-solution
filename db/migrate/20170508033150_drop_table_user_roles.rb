class DropTableUserRoles < ActiveRecord::Migration[5.0]
  def change
  	drop_table :user_roles
  	drop_table :table_roles_users
  end
end
