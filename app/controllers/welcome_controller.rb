class WelcomeController < ApplicationController
  def index
  	@post = Post.all.order('created_at DESC')
  	@topics = Topic.all.order('created_at DESC')
  end
end
