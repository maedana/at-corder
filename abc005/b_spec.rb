require 'rspec'
require File.join(File.dirname(__FILE__), 'b.rb')

describe 'B問題' do
  subject { f(n, times) }

  describe '入力例' do
    let(:n) { 3 }
    let(:times) { [1, 2, 3] }
    it { is_expected.to eq 1 }
  end

  describe '入力例' do
    let(:n) { 3 }
    let(:times) { [3, 3, 3] }
    it { is_expected.to eq 3 }
  end

  describe '入力例' do
    let(:n) { 5 }
    let(:times) { [3, 1, 4, 1, 5] }
    it { is_expected.to eq 1 }
  end
end
