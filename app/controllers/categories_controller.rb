class CategoriesController < ApplicationController
  
  def index
    @categories = Category.all
  end
  def show
    @category = Category.find(params[:id])
  end

  def edit
    @category = Category.fond(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    @category.update(params.require(:category).permit(:name)
    redirect_to categories_path
  end
end
