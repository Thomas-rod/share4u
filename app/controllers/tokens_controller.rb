class TokensController < ApplicationController
  before_action :set_token, only: [:show]

  def new
    @token = Token.new()
  end

  def show

  end

  def create
    @token = Token.new(params_token)
  end

  def update
  end

  private

  def params_token
    params.require(:token).permit(:token_generated)
  end

  def set_token
    @token = Token.find(params[:id])

  end
end
