class CreateReservation < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.references :student, index: true
      t.references :event, index: true
      t.integer :ticket_number
    end
  end
end
