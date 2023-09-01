class AddRoleToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :role, :string

    reversible do |dir|
      dir.up do
        execute <<-SQL
          ALTER TABLE users
          ADD CONSTRAINT check_role CHECK (role IN ('vendedor', 'admin'))
        SQL
      end

      dir.down do
        execute <<-SQL
          ALTER TABLE users
          DROP CONSTRAINT check_role
        SQL
      end
    end
  end
end
