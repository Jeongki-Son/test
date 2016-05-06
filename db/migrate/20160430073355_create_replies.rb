class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.integer :post_id
      t.text :content

      t.timestamps null: false
    end
  end
end
