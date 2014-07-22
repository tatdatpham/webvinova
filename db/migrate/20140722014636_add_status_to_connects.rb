class AddStatusToConnects < ActiveRecord::Migration
  def change
    add_column :connects, :status, :integer
  end
end
