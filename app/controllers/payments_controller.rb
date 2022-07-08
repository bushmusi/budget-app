class PaymentsController < ApplicationController
  before_action :current_category, :authenticate_user!
  def index; end

  def new
    @payment = Payment.new
  end

  def create
    @payment = Payment.new(paymement_params)
    @payment.user = current_user
    respond_to do |format|
      if @payment.save
        CategoryPayment.create(payment_id: @payment.id, category_id: @category.id)
        format.html { redirect_to category_path(@category), notice: 'Expense added successfully' }
      else
        format.html { redirect_to category_path(@category), alert: @payment.errors }
      end
    end
  end

  def current_category
    @category = Category.find(params[:id])
  end

  private

  def paymement_params
    params.require(:payment).permit(:name, :amount)
  end
end
