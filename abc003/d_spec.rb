require 'rspec'
require File.join(File.dirname(__FILE__), 'd.rb')

describe 'ABC003 D' do
  subject { f(r, c, x, y, d, l) }

  describe '入力例' do
    let(:r) { 3 }
    let(:c) { 2 }
    let(:x) { 2 }
    let(:y) { 2 }
    let(:d) { 2 }
    let(:l) { 2 }
    it { is_expected.to eq 12 }
  end

  describe '入力例' do
    let(:r) { 4 }
    let(:c) { 5 }
    let(:x) { 3 }
    let(:y) { 1 }
    let(:d) { 3 }
    let(:l) { 0 }
    it { is_expected.to eq 10 }
  end

  describe '入力例' do
    let(:r) { 23 }
    let(:c) { 18 }
    let(:x) { 15 }
    let(:y) { 13 }
    let(:d) { 100 }
    let(:l) { 95 }
    it { is_expected.to eq 364527243 }
  end
end
