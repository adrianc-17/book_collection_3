# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'Annihilation', author: 'Jeff VanderMeer', price: 15.99, published_date: '2014-02-04')
  end

  it 'is valid with all valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a title' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a published_date' do
    subject.published_date = nil
    expect(subject).not_to be_valid
  end
end
