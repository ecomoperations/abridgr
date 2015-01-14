class AddHeadlineToPosts < ActiveRecord::Migration
  def change
  	add_column :posts, :headline, :boolean
  end
end
