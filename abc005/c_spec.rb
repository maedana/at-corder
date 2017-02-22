require 'rspec'
require File.join(File.dirname(__FILE__), 'c.rb')

# http://abc005.contest.atcoder.jp/submissions/977888 とかシンプル

describe 'C問題' do
  subject { f(t, n, a, m, b) }

  describe '入力例' do
    let(:t) { 1 }
    let(:n) { 3 }
    let(:a) { '1 2 3' }
    let(:m) { 3 }
    let(:b) { '2 3 4' }
    it { is_expected.to eq 'yes' }
  end

  describe '入力例' do
    let(:t) { 1 }
    let(:n) { 3 }
    let(:a) { '1 2 3' }
    let(:m) { 3 }
    let(:b) { '2 3 5' }
    it { is_expected.to eq 'no' }
  end

  describe '入力例' do
    let(:t) { 1 }
    let(:n) { 3 }
    let(:a) { '1 2 3' }
    let(:m) { 10 }
    let(:b) { '1 2 3 4 5 6 7 8 9 10' }
    it { is_expected.to eq 'no' }
  end

  describe '入力例' do
    let(:t) { 1 }
    let(:n) { 3 }
    let(:a) { '1 2 3' }
    let(:m) { 3 }
    let(:b) { '1 2 2' }
    it { is_expected.to eq 'no' }
  end

  describe '入力例' do
    let(:t) { 1 }
    let(:n) { 3 }
    let(:a) { '1 2 2' }
    let(:m) { 3 }
    let(:b) { '1 2 2' }
    it { is_expected.to eq 'yes' }
  end

  describe '入力例' do
    let(:t) { 2 }
    let(:n) { 5 }
    let(:a) { '1 3 6 10 15' }
    let(:m) { 3 }
    let(:b) { '4 8 16' }
    it { is_expected.to eq 'yes' }
  end
end
