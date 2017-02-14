require 'rspec'
require File.join(File.dirname(__FILE__), 'c.rb')

describe 'Regular Contest 002 C' do
  subject { f(xa, ya, xb, yb, xc, yc) }

  describe '入力例' do
    let(:xa) { 1 }
    let(:ya) { 0 }
    let(:xb) { 3 }
    let(:yb) { 0 }
    let(:xc) { 2 }
    let(:yc) { 5 }
    it { is_expected.to eq 5.0 }
  end

  describe '入力例' do
    let(:xa) { -1 }
    let(:ya) { -2 }
    let(:xb) { 3 }
    let(:yb) { 4 }
    let(:xc) { 5 }
    let(:yc) { 6 }
    it { is_expected.to eq 2.0 }
  end

  describe '入力例' do
    let(:xa) { 298 }
    let(:ya) { 520 }
    let(:xb) { 903 }
    let(:yb) { 520 }
    let(:xc) { 4 }
    let(:yc) { 663 }
    it { is_expected.to eq 43257.5 }
  end
end
