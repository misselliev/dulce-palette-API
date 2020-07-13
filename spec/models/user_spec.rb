require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.build(:user, :valid_user) }
  let(:invalid_user) { FactoryBot.build(:user, :invalid_user) }
  let(:user2) { FactoryBot.build(:user, :valid_user) }

  before { user.save }
  before { invalid_user.save }
  before { user2.save }

  it 'should be valid when all fields are completed' do
    expect(user).to be_valid
    expect(invalid_user).to_not be_valid
  end

  it 'password should at least 6 characters' do
    expect(user).to be_valid
    expect(invalid_user).to_not be_valid
  end

  it 'name and lastname should be provided' do
    expect(user).to be_valid
    expect(invalid_user).to_not be_valid
  end

  it 'is not valid without an username' do
    expect(invalid_user).to_not be_valid
  end

  it 'is not valid without a password' do
    invalid_user.password = nil
    expect(invalid_user).to_not be_valid
  end

  it 'is not valid without a proper email' do
    expect(user).to be_valid
    expect(invalid_user).to_not be_valid
  end

  it 'has a unique username' do
    expect(user2).to_not be_valid
  end

  it 'has a unique email' do
    expect(user2).to_not be_valid
  end
end
