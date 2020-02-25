class CreateMemos < ActiveRecord::Migration[5.0]
  def change
    create_table :memos do |t|
      t.string      :title,null:false
      t.string      :body,null:false
      t.string      :link
      t.timestamps
    end
  end
end
