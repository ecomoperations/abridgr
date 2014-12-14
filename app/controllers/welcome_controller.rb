class WelcomeController < ApplicationController
  def index
  	@topics = Topic.all.distinct.order('created_at DESC')

    @posts = Post.paginate(page: params[:page], per_page: 4).order('created_at DESC')
  	respond_to do |format|
  		format.html
  		format.js
	end
  	
  end

  def connect
  end
end
