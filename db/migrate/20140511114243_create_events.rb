class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.datetime :when
      t.integer :maxTickets
      t.integer :ticketPrice
      t.integer :memberDiscount

      t.timestamps
    end
  end
end
