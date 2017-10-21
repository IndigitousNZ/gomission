class ToolsController < ApplicationController
  before_action :authenticate_user!  
  
  helper_method :sort_column, :sort_direction
  
    def index
      column = params[:column]      
      if sortable_columns.include?(column) && column.include?('_rating')
        @tools = Tool.all.sort_by do |tool|
          rating = tool.send column
          params[:direction] == 'asc' ? rating : -1 * rating
        end
      else
        @tools = Tool.order("#{sort_column} #{sort_direction}")
      end
    end

    def show
      @tool = Tool.find(params[:id])
    end

  private
    def sortable_columns
      ["name", "id", "link", "effective_rating", "usable_rating", "intuitive_rating"]
    end
  
    def sort_column
      column = params[:column]
      sortable_columns.include?(column) ? column : "name"
    end
  
    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
end
