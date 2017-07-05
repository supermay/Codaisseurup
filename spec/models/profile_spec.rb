require 'rails_helper'

describe Profile do
  describe "#full_name" do
    it "is composed of first and last name" do
      profile = build(:profile, first_name: "Wouter", last_name: "de Vos")
      expect(profile.full_name).to eq "Wouter de Vos"
    end
  end

  describe ".by_initial" do
     subject { Profile.by_initial("S") }

     let(:sander) { create :profile, first_name: "Sander" }
     let(:stefan) { create :profile, first_name: "Stefan" }
     let(:wouter) { create :profile, first_name: "Wouter" }

     it "returns the profiles that match the initial" do
       expect(subject).to match_array([stefan, sander])
     end

     it "is sorted on first_name" do
       expect(subject).to eq([sander, stefan])
     end
  end




end
