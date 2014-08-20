class AddColumnToTopics < ActiveRecord::Migration
  def change
  	add_column :topics, :picture_url, :string
  	add_column :topics, :description, :string
  end
end
