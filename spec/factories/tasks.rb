FactoryBot.define do
  factory :task do
    title { "MyString" }
    start_date { "2023-11-06" }
    end_date { "2023-11-06" }
    is_all_day { false }
    memo { "MyString" }
  end
end
