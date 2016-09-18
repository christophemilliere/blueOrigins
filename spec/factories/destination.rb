FactoryGirl.define do
  sequence :departure do |i|
    "departure_#{i}"
  end
  sequence :arrival do |i|
    "arrival_#{i}"
  end

  factory :destination do
    departure
    arrival
  end
end
