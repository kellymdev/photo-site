class CategoriesController < ApplicationController
  def index
    @categories = Category.all.order(:id)
  end

  def show
    @category = Category.find(params[:id])
    @images = @category.images
  end
end
