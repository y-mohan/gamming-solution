class CreateTableRolesUser < ActiveRecord::Migration[5.0]
  def change
    create_table :roles_users do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :role, foreign_key: true
    end
  end
end
