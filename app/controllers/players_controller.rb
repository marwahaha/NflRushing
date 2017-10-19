class PlayersController < ApplicationController
  helper_method :sort_column, :sort_direction
  def index
    if params[:name].present?
      @players = Player.search(params[:name]).order(sort_column + ' ' + sort_direction)
    else
      @players = Player.order(sort_column + ' ' + sort_direction)
    end

    respond_to do |format|
      format.html { @players = @players.paginate(:page => params[:page]) }
      format.csv { send_data(Player.to_csv(@players), :filename => 'rushing.csv') }
    end
  end

  private
  def sort_column
    Player.attribute_names.include?(params[:sort]) ? params[:sort] : 'name'
  end

  def sort_direction
    ['asc', 'desc'].include?(params[:direction]) ? params[:direction] : 'asc'
  end
end
