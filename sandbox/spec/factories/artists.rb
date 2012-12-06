FactoryGirl.define do
  factory :artist do
    association :band
    sequence(:name) { |i| "Kathy#{i}" }
  end
end