class MemosController < ApplicationController
  def index
    @memo = Memo.all.page(params[:page]).per(10).order(updated_at:"DESC")
  end

  def new
    @memo=Memo.new
  end

  def create
    Memo.create(memo_params)
    redirect_to root_path
  end

  def edit
    @memo=Memo.find(params[:id])
  end

  def update
    @memo=Memo.find(params[:id])
    @memo.update(memo_params)
    redirect_to root_path
  end

  def destroy
    @memo=Memo.find(params[:id])
    @memo.destroy
    redirect_to root_path
  end

  def search
    @keyword=params[:keyword]
    @memos_search = Memo.search(params[:keyword])
    @memos = Memo.search(params[:keyword]).page(params[:page]).per(10).order(updated_at:"DESC")
  end

  private
  def memo_params
    params.require(:memo).permit(:title,:body,:link).merge(user_id: current_user.id)
  end
end
