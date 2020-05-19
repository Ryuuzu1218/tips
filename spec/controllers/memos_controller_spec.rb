require 'rails_helper'
describe MemosController, type: :controller do
  describe 'GET #new' do
   it "new.html.hamlが表示される" do
    get :new
    expect(response).to render_template :new
   end
  end
  describe 'GET #edit'do
    it "@memoに正しい値が入っているか？" do
      memo=create(:memo)
      get :edit,params:{id: memo}
      expect(assigns(:memo)).to eq memo
    end
    it "edit.html.hamlにいっているか？" do
      memo=create(:memo)
      get :edit,params:{id: memo}
      expect(response).to render_template :edit
    end
  end
  describe 'GET #index' do
    it '@memoの内容は正しいか？' do
      memos=create_list(:memo,5)
      get :index
      expect(assigns(:memo)).to match(memos.sort{|a, b| b.updated_at <=> a.updated_at } )
    end
    it 'index.html.hamlに遷移するか？' do
      get :index
      expect(response).to render_template :index
    end
  end
end