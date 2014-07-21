class CreateConnects < ActiveRecord::Migration
  def change
    create_table :connects do |t|
      t.references :user, index: true
      t.integer :friend

      t.timestamps
    end
  end
end
