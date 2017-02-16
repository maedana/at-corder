require 'rspec'
require File.join(File.dirname(__FILE__), 'a.rb')

describe 'ABC003 A' do
  subject { f(n) }

  describe '入力例' do
    let(:n) { 6 }
    it { is_expected.to eq 35000 }
  end

  describe '入力例' do
    let(:n) { 91 }
    it { is_expected.to eq 460000 }
  end
end
