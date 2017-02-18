require 'rspec'
require File.join(File.dirname(__FILE__), 'b.rb')

describe 'ABC055 B' do
  subject { f(n) }

  describe '入力例' do
    let(:n) { 3 }
    it { is_expected.to eq 6 }
  end

  describe '入力例' do
    let(:n) { 10 }
    it { is_expected.to eq 3628800 }
  end

  describe '入力例' do
    let(:n) { 100000 }
    it { is_expected.to eq 457992974 }
  end
end
