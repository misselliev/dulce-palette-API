require 'rails_helper'

RSpec.describe Palette, type: :model do
  let(:palette) { FactoryBot.build(:palette, :valid_palette) }
  let(:invalid_palette) { FactoryBot.build(:palette, :invalid_palette) }

  before { palette.save }
  before { invalid_palette.save }

  it 'should be valid when color_palette is an array' do
    expect(palette.color_palette).to be_an_instance_of(Array)
  end

  it 'a valid pallete contains pallete array and user_id' do
    expect(palette).to be_valid
  end

  it 'should not be valid if color_palette is nil' do
    expect(invalid_palette).to_not be_valid
  end
end
