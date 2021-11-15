class DotaherosController < ApplicationController
  def index
    @dotaheros = Dotahero.all
  end

  def show
    @dotaheros = Dotahero.find(params[:id])
  end

  def new
    @dotaheros = Dotahero.new
  end

  def create
    dotaheros = Dotahero.create(hero_params)
    redirect_to dotahero_path
  end

  def edit
    @dotaheros = Dotahero.find(params[:id])
  end

  def update
    @dotaheros = Dotahero.find(params[:id])
    @dotaheros.update(hero_params)

    redirect_to dotahero_path(@dotaheros)
  end

  def destroy
    @dotaheros = Dotahero.find(params[:id])
    @dotaheros.destroy
    redirect_to dotahero_path
  end

  private

  def hero_params
    params.require(:dotahero).permit(:name, :atrtype)
  end
end
