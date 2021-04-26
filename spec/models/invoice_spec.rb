require 'rails_helper'

describe Invoice do
  let(:invoice) { build(:invoice) }

  it 'works' do
    expect(invoice).to be_present
  end
end
