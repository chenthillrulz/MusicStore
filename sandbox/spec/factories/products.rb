FactoryGirl.define do
  factory :product do
    heading 'heading'
    association :song
    sequence(:name) { |i| "Tickles#{i}" }

    # after(:create) do |album, evaluator|
    #   FactoryGirl.create_list(:song, evaluator.songs_count, product: product)
    # end
  end
end