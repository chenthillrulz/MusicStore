require 'spec_helper'

describe Artist do
  subject(:artist) { FactoryGirl.create(:artist) }
  let(:album) { FactoryGirl.create(:album) }

  it{ should respond_to(:name) }
  it{ should have_many(:bands) }

  #should be reading from the FactoryGirl implementation
  #its(:email) { should == 'test@merriweather.ca'}

  its(:band_members) { should be_empty }

  it "should have no bands" do
    artist = Artist.new
    artist.bands.count.should < 1    
    artist.should_not be_valid

    expect { artist.save! }.to raise_error
  end

  it "has a name that matches 'Kathy'" do
    artist = Artist.new(name: "Kathy 1")
    artist.name.should match(/Kathy \d/)
  end

  it "changes the number of Artists" do
    artist = Artist.new(name: 'Kathy')
    expect { artist.save }.to change { Artist.count }.by(1)
  end

  it "includes bands" do
    artist = Artist.new(name: 'Kathy')
    band = Artist.new(name: 'Ragged But Right')
    band.band_members << artist
    band.save
    band.should have(1).band_members
  end

end