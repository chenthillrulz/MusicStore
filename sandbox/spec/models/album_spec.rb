require 'spec_helper'

describe Spree::Product do
  let(:songs){}

  it{ should validate_presence_of(:name) }
  
  

  # it "should allow song creation" do

  #   it { should have_many(:songs) }
  # end

  context "given a bad list of artists" do
    let(:artists_missing){{}}

    it "fails to create bad album" do
      expect { Album.create }.to raise_error
    end
  end
end