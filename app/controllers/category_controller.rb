class CategoryController < ApplicationController
  before_action :authenticate_user!
  before_action :current_category, only: %i[edit update show destory]
  before_action :update_allowed_parameters, if: :devise_controller?

  def index
    @categories = Category.all
  end

  def show
    @expenses = @category.payments.order(created_at: :desc)
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.user = current_user
    respond_to do |format|
      if @category.save
        format.html { redirect_to category_path(@category), notice: 'Category successfully created' }
      else
        format.html { redirect_to category_index_path, alert: 'Category not created' }
      end
    end
  end

  def current_category
    @category = Category.find(params[:id]) || nil
  end

  private

  def category_params
    params.require(:category).permit(:name, :icon)
  end
end
