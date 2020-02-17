class RenameTipsToMemo < ActiveRecord::Migration[5.0]
  def change
    rename_table :tips, :memo
    drop_table :tips
  end
end
