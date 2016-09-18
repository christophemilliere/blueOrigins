FactoryGirl.define do
  factory :reservation do
    name
    association :teleporter
  end
end
