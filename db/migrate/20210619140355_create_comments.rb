class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.references :users
      t.references :posts
      t.string :comment
      t.timestamps
    end
  end
end
