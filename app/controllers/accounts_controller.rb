class AccountsController < ApplicationController
  before_action :set_account, only: [:show, :edit, :update, :destroy]

  def index
    @accounts = Account.all
    respond_with(@accounts)
  end

  def new
    @account = Account.new

    respond_with(@account)
  end

  def show; end
  def edit; end

  def create
    @account = Account.new(account_params)
    @account.save!

    respond_with(@account)
  end

  def update
    @account.update(account_params)

    respond_with(@account)
  end

  def destroy
    @account.destroy

    respond_with(@account)
  end

  def load_account
    @account ||= Account.new(number: params[:number].to_i)
    @account.number.times { @account.installments.build } if @account.installments.count == 0
  end

  private

  def set_account
    @account = Account.find(params[:id])
  end

  def account_params
    params.require(:account).permit(:amount, :number, installments_attributes: [:amount, :number])
  end
end
