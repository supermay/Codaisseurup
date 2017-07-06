require 'rails_helper'

RSpec.describe Category, type: :model do
  it { is_expected.to have_and_belong_to_many :events}
end
