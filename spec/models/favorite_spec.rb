require 'rails_helper'

RSpec.describe Favorite, type: :model do
  let(:favorite) { FactoryBot.build(:favorite, :valid_favorite) }
  let(:invalid_favorite) { FactoryBot.build(:favorite, :invalid_favorite) }

  before { favorite.save }
  before { invalid_favorite.save }

  it 'a valid favorite contains pallete_id and user_id' do
    expect(favorite).to be_valid
  end

  it 'should not be valid if palette_id is nil' do
    expect(invalid_favorite).to_not be_valid
  end
end
