class GridsController < ApplicationController
  def new
    @grid = Grid.new
    @grid.user = current_user
  end

  def create
    @grid = Grid.new(user: current_user)
    (1..9).to_a.each do |number|
      square = Case.new(position: number, grid: @grid)
      square.save
    end
    @grid.save
    redirect_to grid_path(@grid)
  end

  def show
    @grid = Grid.find(params[:id])
    @cases_left = @grid.cases.select { |cas| !cas.value }
  end
end
