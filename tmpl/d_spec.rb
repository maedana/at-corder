require 'rspec'
require File.join(File.dirname(__FILE__), 'd.rb')

describe 'ABC055 D' do
  subject { f(x) }

  describe '入力例' do
    let(:x) { 6 }
    it { is_expected.to eq 35000 }
  end
end
