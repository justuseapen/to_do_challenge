# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
    sequence :title do |n|
      "Task number #{n}@"
    end
  end
end
