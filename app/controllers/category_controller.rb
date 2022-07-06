class CategoryController < ApplicationController
  before_action :authenticate_user!
  before_action :update_allowed_parameters, if: :devise_controller?

  def index
  end
end
