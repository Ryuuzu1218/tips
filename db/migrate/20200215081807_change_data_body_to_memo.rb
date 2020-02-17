class ChangeDataBodyToMemo < ActiveRecord::Migration[5.2]
  def change
    change_column :memos, :body, :text
  end
end
