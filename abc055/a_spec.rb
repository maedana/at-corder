require 'rspec'
require File.join(File.dirname(__FILE__), 'a.rb')

describe 'ABC055 A' do
  subject { f(n) }

  describe '入力例' do
    let(:n) { 20 }
    it { is_expected.to eq 15800 }
  end

  describe '入力例' do
    let(:n) { 60 }
    it { is_expected.to eq 47200 }
  end
end
