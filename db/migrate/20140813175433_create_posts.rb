class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :author
      t.string :source
      t.string :site_url
      t.string :tag_list

      t.timestamps
    end
  end
end
