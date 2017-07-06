require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "validations" do
   it { is_expected.to validate_presence_of(:name) }
   it { is_expected.to validate_presence_of(:description) }
   it { is_expected.to validate_length_of(:description).is_at_most(500) }
 end

  describe "associations" do
    it { is_expected.to belong_to :user}
    it { is_expected.to have_and_belong_to_many :categories}
  end




 describe "#bargain?" do
   let(:bargain_event) { create :event, price: 5 }
   let(:non_bargain_event) { create :event, price: 20 }

   it "returns true if the price is smaller than 10 EUR" do
     expect(bargain_event.bargain?).to eq(true)
     expect(non_bargain_event.bargain?).to eq(false)
   end
 end

 describe ".order_by_price" do
   let!(:event1) { create :event, price: 10 }
   let!(:event2) { create :event, price: 20 }
   let!(:event3) { create :event, price: 5 }

   it "returns a sorted array of rooms by prices" do
     # note that they should not come out in the order that they were created
     expect(Event.order_by_price).to eq([event3, event1, event2])
   end
 end





end
