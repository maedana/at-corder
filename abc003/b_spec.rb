require 'rspec'
require File.join(File.dirname(__FILE__), 'b.rb')

describe 'ABC003 B' do
  subject { f(s, t) }

  describe '入力例' do
    let(:s) { 'ch@ku@ai' }
    let(:t) { 'choku@@i' }
    it { is_expected.to eq 'You can win' }
  end

  describe '入力例' do
    let(:s) { 'aoki' }
    let(:t) { '@ok@' }
    it { is_expected.to eq 'You will lose' }
  end

  describe '入力例' do
    let(:s) { 'arc' }
    let(:t) { 'abc' }
    it { is_expected.to eq 'You will lose' }
  end
end
