class CommentsController < ApplicationController
  def create
    Comment.create!(user_id: current_user.id, content: params[:new_comment], tool_id: params[:tool_id])
    redirect_back fallback_location: "/tools"
  end
end
