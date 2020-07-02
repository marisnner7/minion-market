require 'rails_helper'

RSpec.describe User, type: :model do
  let(:valid_attributes) do
    {
      name: 'Milene'
    }
  end
end

it 'has a name' do
  user1 = User.new(name: 'Milene')
  expect(user1.name).to eq('Milene')
end

it "name cannot be blank" do
  attributes = valid_attributes
  attributes.delete(:name)
  user = User.new(attributes)
  expect(user).not_to be_valid
end
