class ChangeDefaultVoteNumber < ActiveRecord::Migration
  def up
    change_column_default :votes, :number, 0
  end

  def down
  end
end
