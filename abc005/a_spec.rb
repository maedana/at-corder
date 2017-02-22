require 'rspec'
require File.join(File.dirname(__FILE__), 'a.rb')

describe 'A問題' do
  subject { f(x, y) }

  describe '入力例' do
    let(:x) { 4 }
    let(:y) { 8 }
    it { is_expected.to eq 2 }
  end

  describe '入力例' do
    let(:x) { 4 }
    let(:y) { 7 }
    it { is_expected.to eq 1 }
  end

  describe '入力例' do
    let(:x) { 4 }
    let(:y) { 3 }
    it { is_expected.to eq 0 }
  end
end
