class UsersController < ApplicationController
def show
  user=User.find(params[:id])
  @nickname=user.nickname
  @memo=user.memos.page(params[:page]).per(10).order(updated_at:"DESC")

end
end
