class CreateTrivia < ActiveRecord::Migration[5.2]
  def change
    create_table :trivia do |t|
      t.string      :title,null:false
      t.text      :body,null:false
      t.string      :link
      t.timestamps
    end
  end
end
