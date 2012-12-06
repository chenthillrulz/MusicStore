FactoryGirl.define do
  factory :band do
    sequence(:name) { |i| "Kathy#{i}" }
  end
end