FactoryBot.define do
  factory :memo do
    title         {"タイトル"}
    body          {"内容がここに入る"}
    link          {"https://qiita.com/sanriyochan/items/8ef84f92f8685e1c74a0"}
    updated_at { Faker::Time.between(from: DateTime.now - 4, to: DateTime.now) }
  end
end