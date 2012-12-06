FactoryGirl.define do
  factory :artist do
    email 'test@merriweather.ca'
    sequence(:name) { |i| "Kathy#{i}" }
  end
end