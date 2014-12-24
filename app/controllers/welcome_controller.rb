class WelcomeController < ApplicationController
  def index
  	# @topics = Topic.paginate(page: params[:page], per_page: 5).order('created_at DESC')
    @topics = Topic.all.order('created_at DESC').first(5)

    @posts = Post.paginate(page: params[:page], per_page: 4).order('created_at DESC')
  	respond_to do |format|
  		format.html
  		format.js
	   end
  	
  end

  def topics 
    @topics = Topic.paginate(page: params[:page], per_page: 5).order('created_at DESC')
  end

  def connect
  end
end
