class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.text :post_id
      t.text :content, default: ""

      t.timestamps
    end
  end
end
