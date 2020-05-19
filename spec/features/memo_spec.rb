require 'rails_helper'

feature 'memo', type: :feature do
  let(:memo) { create(:memo) }
  scenario '投稿するまでの流れができるか' do
    visit root_path
    click_on("新しく作る")
    expect(current_path).to eq new_memo_path
    fill_in 'title',with:memo.title
    fill_in 'body',with:memo.body
    fill_in 'link',with:memo.link
    click_on("新しく作る！")
    
    expect(current_path).to eq root_path
  end

end