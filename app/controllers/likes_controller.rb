class LikesController < ApplicationController
  def like
    @like = Like.new(post_id: params[:p_id], user_id: params[:u_id])

    @like.save

    redirect_to params[:return_url]
  end

  def unlike
    @like = Like.find_by(post_id: params[:p_id], user_id: params[:u_id])

    @like.destroy

    redirect_to params[:return_url]
  end

  def ilike
    @like = Like.new(post_id: params[:p_id], user_id: params[:u_id])

    @like.save

    redirect_to params[:return_url]
  end

  def iunlike
    @like = Like.find_by(post_id: params[:p_id], user_id: params[:u_id])

    @like.destroy

    redirect_to params[:return_url]
  end

  def mylike
    
  @like = Like.where(user_id: current_user.id).order(created_at: :desc)
  @like = @like.page(params[:page]).per(10)
    
  end
end
