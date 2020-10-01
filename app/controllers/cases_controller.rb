class CasesController < ApplicationController
  def edit
    @grid = Grid.find(params[:grid_id])
    @case = Case.find(params[:id])
  end

  def update
    @grid = Grid.find(params[:grid_id].to_i)
    @case = Case.find(params[:id].to_i)
    @case.update(value: params[:case] == "true", symbol: "X")
    redirect_to grid_path(@grid)
    @cases_left = @grid.cases.select { |cas| !cas.value }
    @machine_case = @cases_left.sample
    @machine_case.update(value: "true" == "true", symbol: "O")
  end


end
