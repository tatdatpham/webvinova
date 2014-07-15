class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :fullname
      t.date :birthday
      t.string :phone

      t.timestamps
    end
  end
end
