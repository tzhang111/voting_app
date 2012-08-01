class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event

      t.timestamps
    end
  end
end
