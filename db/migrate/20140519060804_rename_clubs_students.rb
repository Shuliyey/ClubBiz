class RenameClubsStudents < ActiveRecord::Migration
  def self.up
    rename_table :Clubs_students, :studentclub
  	rename_table :events_students, :studentevent
  end

 def self.down
    rename_table :studentclub, :Clubs_students 
  	rename_table :studentevent, :events_students
 end
end