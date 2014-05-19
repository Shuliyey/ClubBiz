class CreateJoinTableStudentClub < ActiveRecord::Migration
  def change
    create_join_table :students, :Clubs do |t|
      # t.index [:student_id, :club_id]
      # t.index [:club_id, :student_id]
    end
  end
end
