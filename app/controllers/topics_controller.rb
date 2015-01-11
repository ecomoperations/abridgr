class TopicsController < ApplicationController

	def index
		@posts = Post.tagged_with(params[:topic]).paginate(page: params[:page], per_page: 4).order('created_at DESC')
		@topic = Post.tagged_with(params[:topic]).first
    @topics = Topic.all.distinct.order('created_at DESC')
	end


	def new
    
		@topic = Topic.new
	end

	def create
    @topic = Topic.new(topic_params)

    respond_to do |format|
      if @topic.save
        format.html { redirect_to "/", notice: 'Post was successfully created.' }
        format.json { render action: 'show', status: :created, location: @post }
      else
        format.html { render action: 'new' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end
private
	def topic_params
      params.require(:topic).permit(:name, :picture_url, :description)
    end
end
