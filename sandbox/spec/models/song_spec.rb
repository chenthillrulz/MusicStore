describe Song do
  it { should validate_presence_of(:name) }

  it "can create many songs" do
      10.times { FactoryGirl.build(:song) }
  end

  it "is called Tickles" do
    song = Song.new(name: 'Tickles')
  end

end