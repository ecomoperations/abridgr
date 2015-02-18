class TopicsController < ApplicationController

	def index
		@posts = Post.tagged_with(params[:topic]).paginate(page: params[:page], per_page: 7).order('created_at DESC')
		@topic = Post.tagged_with(params[:topic]).first
    @topics = Topic.all.distinct.order('created_at DESC').first(5)
	end


	def new
    if current_user.admin?
		  @topic = Topic.new
    else 
      redirect_to root_path
    end	
  end

	def create
    if current_user.admin?
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
    else
      redirect_to root_path
    end
  end
private
	def topic_params
      params.require(:topic).permit(:name, :picture_url, :description)
    end
end
