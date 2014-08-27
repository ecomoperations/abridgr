class NewsUserController < ApplicationController
  
  def new
  	@news_user = NewsUser.new
  end
  def create
    @user = NewsUser.new(news_user_params)
 
    respond_to do |format|
      if @user.save
        # Tell the UserMailer to send a welcome email after save
        NewsMailer.welcome_email(@user).deliver
 
        format.html { redirect_to(root_path, notice: 'User was successfully created.') }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def news_user_params
      params.require(:news_user).permit(:email)
    end
end
