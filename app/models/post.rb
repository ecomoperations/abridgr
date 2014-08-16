class Post < ActiveRecord::Base
  has_many :taggings
  has_many :topics, through: :taggings

  def self.tagged_with(name)
    Topic.find_by_name!(name).posts
  end

  
  def tag_list
    topics.map(&:name).join(", ")
  end
  
  def tag_list=(names)
    self.topics = names.split(",").map do |n|
      Topic.where(name: n.strip).first_or_create!
    end
  end
end
