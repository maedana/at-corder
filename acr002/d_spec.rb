require 'rspec'
require File.join(File.dirname(__FILE__), 'd.rb')

describe 'Regular Contest 002 D' do
  subject { f(n, m, relations) }

  describe '入力例' do
    let(:n) { 5 }
    let(:m) { 3 }
    let(:relations) do
      [
        [1, 2],
        [2, 3],
        [1, 3]
      ]
    end
    it { is_expected.to eq 3 }
  end

  describe '入力例' do
    let(:n) { 5 }
    let(:m) { 3 }
    let(:relations) do
      [
        [1, 2],
        [2, 3],
        [3, 4]
      ]
    end
    it { is_expected.to eq 2 }
  end

  describe '入力例' do
    let(:n) { 12 }
    let(:m) { 0 }
    let(:relations) do
      nil
    end
    it { is_expected.to eq 1 }
  end
end
