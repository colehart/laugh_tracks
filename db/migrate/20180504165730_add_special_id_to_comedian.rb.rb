# adding Special ID column to Comedian tables
class AddSpecialIdToComedian < ActiveRecord::Migration[5.2]
  def change
    add_column :comedians, :special_id, :integer
  end
end
