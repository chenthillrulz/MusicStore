FactoryGirl.define do
  factory :song do
    sequence(:name) { |i| "Kids#{i}" }
    sequence(:mp3) { |i| "Banjo#{i}.mp3" }
    sequence(:ogg) { |i| "Banjo#{i}.ogg" }
  end
end