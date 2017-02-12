require 'rspec'
require File.join(File.dirname(__FILE__), 'b.rb')

describe 'Regular Contest 001 B' do
  subject { f(a, b) }

  describe '入力例' do
    let(:a) { 7 }
    let(:b) { 34 }
    it { is_expected.to eq 5 }
  end

  describe '入力例' do
    let(:a) { 19 }
    let(:b) { 28 }
    it { is_expected.to eq 2 }
  end

  describe '入力例' do
    let(:a) { 10 }
    let(:b) { 10 }
    it { is_expected.to eq 0 }
  end

  describe '入力例' do
    let(:a) { 1 }
    let(:b) { 5 }
    it { is_expected.to eq 2 }
  end

  describe '入力例' do
    let(:a) { 1 }
    let(:b) { 4 }
    it { is_expected.to eq 3 }
  end

  describe '入力例' do
    let(:a) { 1 }
    let(:b) { 6 }
    it { is_expected.to eq 1 }
  end

  describe '入力例' do
    let(:a) { 5 }
    let(:b) { 1 }
    it { is_expected.to eq 1 }
  end

  describe '入力例' do
    let(:a) { 7 }
    let(:b) { 3 }
    it { is_expected.to eq 2 }
  end
end
