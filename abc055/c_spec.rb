require 'rspec'
require File.join(File.dirname(__FILE__), 'c.rb')

describe 'ABC055 C' do
  subject { f(n, m) }

  describe '入力例' do
    let(:n) { 1 }
    let(:m) { 6 }
    it { is_expected.to eq 2 }
  end

  describe '入力例' do
    let(:n) { 1 }
    let(:m) { 0 }
    it { is_expected.to eq 0 }
  end

  describe '入力例' do
    let(:n) { 1 }
    let(:m) { 1 }
    it { is_expected.to eq 0 }
  end

  describe '入力例' do
    let(:n) { 1 }
    let(:m) { 2 }
    it { is_expected.to eq 1 }
  end

  describe '入力例' do
    let(:n) { 1 }
    let(:m) { 8 }
    it { is_expected.to eq 2 }
  end

  describe '入力例' do
    let(:n) { 1 }
    let(:m) { 10 }
    it { is_expected.to eq 3 }
  end

  describe '入力例' do
    let(:n) { 12345 }
    let(:m) { 678901 }
    it { is_expected.to eq 175897 }
  end

  describe '入力例' do
    let(:n) { 4 }
    let(:m) { 1 }
    it { is_expected.to eq 0 }
  end

  describe '入力例' do
    let(:n) { 4 }
    let(:m) { 2 }
    it { is_expected.to eq 1 }
  end

  describe '入力例' do
    let(:n) { 1 }
    let(:m) { 2 }
    it { is_expected.to eq 1 }
  end
end
