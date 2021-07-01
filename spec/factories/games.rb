FactoryBot.define do
  factory :game do
    external_id { "MyString" }
    timeout { 1 }
    width { 1 }
    height { 1 }
    snake_count { 1 }
    mode { "MyString" }
  end
end
