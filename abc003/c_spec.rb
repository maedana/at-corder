require 'rspec'
require File.join(File.dirname(__FILE__), 'c.rb')

describe 'ABC003 C' do
  subject { f(n, k, rn) }

  describe '入力例' do
    let(:n) { 2 }
    let(:k) { 2 }
    let(:rn) { [1000, 1500] }
    it { is_expected.to eq 1000.000000 }
  end

  describe '入力例' do
    let(:n) { 2 }
    let(:k) { 1 }
    let(:rn) { [1000, 1500] }
    it { is_expected.to eq 750 }
  end

  describe '入力例' do
    let(:n) { 10 }
    let(:k) { 5 }
    let(:rn) { [2604, 2281, 3204, 2264, 2200, 2650, 2229, 2461, 2439, 2211] }
    it { is_expected.to eq 2820.031250000 }
  end
end
