class InstallmentsController < ApplicationController
  before_action :set_installment, only: [:show, :edit, :update, :destroy]

  def index
    @installments = Installment.all
  end

  def new
    @installment = Installment.new
  end

  def show; end
  def edit; end

  def create
    @installment = Installment.new(installment_params)

    respond_with(@installment)
  end

  def update
    @installment.update(installment_params)

    respond_with(@installment)
  end

  def destroy
    @installment.destroy

    respond_with(@installment)
  end

  private

    def set_installment
      @installment = Installment.find(params[:id])
    end


    def installment_params
      params.require(:installment).permit(:amount, :number, :references)
    end
end
