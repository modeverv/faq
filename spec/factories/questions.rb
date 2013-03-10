# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    question "MyString"
    answer "MyString"
    viewcount 1
    category_id 1
    isanswerd 1
  end
end
