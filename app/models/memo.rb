class Memo < ApplicationRecord
  validates :title,:body, presence: true
  validates :body, length:{minimum:5}

  belongs_to :user

  def self.search(search)
    return Memo.all unless search
    query = [(['title LIKE ?'] * search.split(/[[:blank:]]+/).length).join(' AND ')] + search.split(/[[:blank:]]+/).map { |title| "%#{title}%" }
    Memo.where(*query) 
  end
end
