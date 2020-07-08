class HomeController < ApplicationController
  impressionist :actions=>[:letter]

  def index
  end

  def profile
  	@subscriber = Subscriber.find_by(email: params[:email])
    if @subscriber.nil?
	    @subscriber = Subscriber.new
		end
		@plans = Plan.all.order('frequency')  	
  end

  def letter
    @post = Post.friendly.find(params[:id])	
		set_meta_tags title: @post.title,
              description: @post.meta_desc,
              keywords: ''
    @post.meta_keywords 
    impressionist(@post, params[:ref]) 
  end
end
