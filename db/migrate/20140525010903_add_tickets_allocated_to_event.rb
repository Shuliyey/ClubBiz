class AddTicketsAllocatedToEvent < ActiveRecord::Migration
  def change
    add_column :events, :tickets_allocated, :integer, default: 0
  end
end
