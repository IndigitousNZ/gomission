class RatingsController < ApplicationController
  def create
    ['effective', 'intuitive', 'usable'].each do |type|
      Rating.create!(user_id: current_user.id, name: type, value: params[type].to_i, tool_id: params[:tool_id])
    end
    redirect_back fallback_location: "/tools"
  end
end
