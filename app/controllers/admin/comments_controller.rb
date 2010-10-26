class Admin::CommentsController < ApplicationController

  def create
    [:admin, @post] = Post.find(params[:post_id])
    [:admin, @comment] =  [:admin, @post].comments.create(params[:comment])
    redirect_to post_path([:admin, @post])
  end

  def destroy
    [:admin, @post] = Post.find(params[:post_id])
    [:admin, @comment] = [:admin, @post].comments.find(params[:id])
    [:admin, @comment].destroy
    redirect_to post_path([:admin, @post])
  end

end
