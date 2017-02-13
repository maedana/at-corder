require 'rspec'
require File.join(File.dirname(__FILE__), 'b.rb')

describe 'Regular Contest 002 B' do
  subject { f(w) }

  describe '入力例' do
    let(:w) { 'chokudai' }
    it { is_expected.to eq 'chkd' }
  end

  describe '入力例' do
    let(:w) { 'okanemochi' }
    it { is_expected.to eq 'knmch' }
  end
end
