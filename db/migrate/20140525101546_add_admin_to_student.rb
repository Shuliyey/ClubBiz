class AddAdminToStudent < ActiveRecord::Migration
  def change
    add_column :students, :admin, :boolean, default: FALSE
  end
end
