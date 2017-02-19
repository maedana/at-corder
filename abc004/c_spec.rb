require 'rspec'
require File.join(File.dirname(__FILE__), 'c.rb')

describe 'C問題' do
  subject { f(n) }

  describe '入力例' do
    let(:n) { 1 }
    it { is_expected.to eq '213456' }
  end

  describe '入力例' do
    let(:n) { 5 }
    it { is_expected.to eq '234561' }
  end

  describe '入力例' do
    let(:n) { 14 }
    it { is_expected.to eq '456132' }
  end

  describe '入力例' do
    let(:n) { 44 }
    it { is_expected.to eq '456132' }
  end

  describe '入力例' do
    let(:n) { 22 }
    it { is_expected.to eq '615234' }
  end

  describe '入力例' do
    let(:n) { 30 }
    it { is_expected.to eq '123456' }
  end

  describe '入力例' do
    let(:n) { 60 }
    it { is_expected.to eq '123456' }
  end

  describe '入力例' do
    let(:n) { 100000000 }
    it { is_expected.to eq '345612' }
  end
end
