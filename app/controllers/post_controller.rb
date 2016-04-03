class PostController < ApplicationController
  
  def show
  	category = Category.find params[:category_id]
  	@posts = category.posts.order(:tag)
  	
  end 

end