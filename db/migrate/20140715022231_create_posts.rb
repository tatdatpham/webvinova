class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :sharewith
      t.integer :view
      t.integer :status
      t.references :user, index: true

      t.timestamps
    end
  end
end
