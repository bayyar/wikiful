class CategoriesController < ApplicationController
  def index
  	@categories = Category.all.order(:category_name)
  end

  def show
  	@category = Category.find(params[:id])
  end
end