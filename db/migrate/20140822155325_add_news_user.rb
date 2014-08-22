class AddNewsUser < ActiveRecord::Migration
  def change
  	create_table :news_users do |t|
      t.string :email

      t.timestamps
    end
  end
end
