require 'spec_helper'
require './app/models/coin'

describe Coin do
    let(:coin) { described_class.new(name: "Two Dollars", value: 2, quantity: 5) }
  
    describe '#initialize' do
      it 'initialize with name, value, quantity' do
        expect(coin).to have_attributes(:value => 2, :name => "Two Dollars", :quantity 5)
      end
    end
  end