require 'rspec'
require File.join(File.dirname(__FILE__), 'a.rb')

describe 'Regular Contest 002 A' do
  subject { f(x, y) }

  describe '入力例' do
    let(:x) { 10 }
    let(:y) { 11 }
    it { is_expected.to eq 11 }
  end

  describe '入力例' do
    let(:x) { 100000000 }
    let(:y) { 10000000 }
    it { is_expected.to eq 100000000 }
  end
end
