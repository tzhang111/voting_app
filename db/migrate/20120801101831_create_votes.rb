class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :option
      t.integer :event_id
      t.integer :number

      t.timestamps
    end
  end
end
