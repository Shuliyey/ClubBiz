class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.references :student, index: true
      t.references :event, index: true
    end
  end
end
