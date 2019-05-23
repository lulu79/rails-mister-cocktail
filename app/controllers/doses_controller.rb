class DosesController < ApplicationController
  def index
    @doses = Dose.all
  end

  def show
    @dose = Dose.find(params[:id])
  end

  def new
     @dose = Dose.new
  end

  def create
    @dose = Dose.new(name: params[:name], cocktail: params[:cocktail])
    @dose.save
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
  end
end
