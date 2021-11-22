class CategoriesController < ApplicationController
before_action :current_category, only: [:show, :edit, :update, :destroy]
  
  def index
    @categories = Category.all
  end

  def create
    categories = Category.create(categories_params)
    redirect_to categories_path
  end

  def update
    @categories.update(categories_params)

    redirect_to categories_path(@categories)
  end

  def show
  end

  def new
    @categories = Category.new
  end

  def edit
    @categories = Category.find(params[:id])
  end

  def destroy
    @categories.destroy
    redirect_to categories_path
  end

  private
  
    def categories_params
      params.require(:category).permit(:name)
    end
  
    def current_category
      @categories = Category.find(params[:id])
    end
end
  
