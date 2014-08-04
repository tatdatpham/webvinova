class CreateUseronlines < ActiveRecord::Migration
  def change
    create_table :useronlines do |t|
      t.references :user, index: true

      t.timestamps
    end
  end
end
