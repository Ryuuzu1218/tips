require 'rails_helper'
describe Memo do
  describe "#create" do
    it "タイトルがないと保存できない" do
      memo=FactoryBot.build(:memo,title:"")
      memo.valid?
      expect(memo.errors[:title]).to include("can't be blank")
    end
    it "内容がないと保存できない" do
      memo=FactoryBot.build(:memo,body:"")
      memo.valid?
      expect(memo.errors[:body]).to include("can't be blank")
    end
    it "内容が5文字未満だと保存できない" do
      memo=FactoryBot.build(:memo,body:"４文字")
      memo.valid?
      expect(memo.errors[:body]).to include("is too short (minimum is 5 characters)")
    end
  end
end