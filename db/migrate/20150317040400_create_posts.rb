class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :heading
      t.text :title
      t.text :link
      t.text :details
      t.string :institution

      t.timestamps
    end
  end
end
