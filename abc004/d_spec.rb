require 'rspec'
require File.join(File.dirname(__FILE__), 'd.rb')

describe 'D問題' do
  subject { f(r, g, b) }

  describe '入力例' do
    let(:r) { 2 }
    let(:g) { 3 }
    let(:b) { 4 }
    it { is_expected.to eq 7 }
  end

  describe '入力例' do
    let(:r) { 17 }
    let(:g) { 2 }
    let(:b) { 34 }
    it { is_expected.to eq 362 }
  end

#  describe '入力例' do
#    let(:r) { 267 }
#    let(:g) { 294 }
#    let(:b) { 165 }
#    it { is_expected.to eq 88577 }
#  end
end
