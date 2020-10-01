class CasesController < ApplicationController
  def edit
    @grid = Grid.find(params[:grid_id])
    @case = Case.find(params[:id])
  end

  def update
    @grid = Grid.find(params[:grid_id].to_i)
    @case = Case.find(params[:id].to_i)
    @case.update(value: params[:case] == "true")
    redirect_to grid_path(@grid)
  end


end
