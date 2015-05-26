class AccountsController < ApplicationController
  before_action :set_account, only: [:show, :edit, :update, :destroy]

  def index
    @accounts = Account.all
    respond_with(@accounts)
  end

  def new
    @account = Account.new
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

  private

  def set_account
    @account = Account.find(params[:id])
  end


  def account_params
    params.require(:account).permit(:amount, :number)
  end
end
