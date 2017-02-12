require 'rspec'
require File.join(File.dirname(__FILE__), 'a.rb')

describe 'Regular Contest 001 A' do
  subject { f(n, c) }

  describe '入力例1' do
    let(:n) { 9 }
    let(:c) { '131142143' }
    it { is_expected.to eq [4, 1] }
  end

  describe '入力例2' do
    let(:n) { 20 }
    let(:c) { '12341234123412341234' }
    it { is_expected.to eq [5, 5] }
  end

  describe '入力例3' do
    let(:n) { 4 }
    let(:c) { '1111' }
    it { is_expected.to eq [4, 0] }
  end
end
