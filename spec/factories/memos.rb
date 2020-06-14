FactoryBot.define do
  factory :memo do
    title         {"タイトル"}
    body          {"内容がここに入る"}
    link          {"https://qiita.com/"}
    updated_at { Faker::Time.between(from: DateTime.now - 4, to: DateTime.now) }
  end
end