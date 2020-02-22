class Memo < ApplicationRecord
  validates :title,:body, presence: true

  def self.search(search)
    return Memo.all unless search
    Memo.where('title LIKE(?)', "%#{search}%")
  end
end
