class TipsController < ApplicationController

  def index
    @memo=Memo.all
  end

  def new
    @memo=Memo.new
  end

  # def creat
  #   Memo.create(memo_params)
  #   redirect_to root_path
  # end

  private
  def memo_params
    params.require(:memo).permit(:title,:body,:link)
  end
end
