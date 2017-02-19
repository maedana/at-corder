require 'rspec'
require File.join(File.dirname(__FILE__), 'a.rb')

describe 'A問題' do
  subject { f(n) }

  describe '入力例' do
    let(:n) { 1000 }
    it { is_expected.to eq 2000 }
  end

  describe '入力例' do
    let(:n) { 0 }
    it { is_expected.to eq 0 }
  end
end
