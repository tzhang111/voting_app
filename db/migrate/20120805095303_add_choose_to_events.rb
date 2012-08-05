class AddChooseToEvents < ActiveRecord::Migration
  def change
    add_column :events, :choose, :integer, :default => 0
  end
end
