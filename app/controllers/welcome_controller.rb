class WelcomeController < ApplicationController
  def index
  	@post = Post.all.order('created_at DESC')
  	@topics = Topic.all.distinct.order('created_at DESC')
  	
  end

  def connect
  end
end
