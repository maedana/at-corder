require 'rspec'
require File.join(File.dirname(__FILE__), 'a.rb')

describe 'Beginner Contest 001 A' do
  subject { f(h1, h2) }

  describe '入力例1' do
    let(:h1) { '15' }
    let(:h2) { '10' }
    it { is_expected.to eq 5 }
  end

  describe '入力例2' do
    let(:h1) { '5' }
    let(:h2) { '20' }
    it { is_expected.to eq(-15) }
  end
end
