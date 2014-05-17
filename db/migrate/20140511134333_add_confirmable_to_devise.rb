class AddConfirmableToDevise < ActiveRecord::Migration
  # Note: You can't use change, as student.update_all with fail in the down migration
  def self.up
    add_column :students, :confirmation_token, :string
    add_column :students, :confirmed_at, :datetime
    add_column :students, :confirmation_sent_at, :datetime
    # add_column :students, :unconfirmed_email, :string # Only if using reconfirmable
    add_index :students, :confirmation_token, :unique => true
    # student.reset_column_information # Need for some types of updates, but not for update_all.
    # To avoid a short time window between running the migration and updating all existing
    # students as confirmed, do the following
    Student.update_all(:confirmed_at => Time.now)
    # All existing student accounts should be able to log in after this.
    add_column :clubs, :confirmation_token, :string
    add_column :clubs, :confirmed_at, :datetime
    add_column :clubs, :confirmation_sent_at, :datetime
    # add_column :clubs, :unconfirmed_email, :string # Only if using reconfirmable
    add_index :clubs, :confirmation_token, :unique => true
    # Club.reset_column_information # Need for some types of updates, but not for update_all.
    # To avoid a short time window between running the migration and updating all existing
    # clubs as confirmed, do the following
    Club.update_all(:confirmed_at => Time.now)
    # All existing club accounts should be able to log in after this.
  end

  def self.down
    remove_columns :students, :confirmation_token, :confirmed_at, :confirmation_sent_at
    # remove_columns :students, :unconfirmed_email # Only if using reconfirmable
    remove_columns :clubs, :confirmation_token, :confirmed_at, :confirmation_sent_at
    # remove_columns :clubs, :unconfirmed_email # Only if using reconfirmable
  end
end