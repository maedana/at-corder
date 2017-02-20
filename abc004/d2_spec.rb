require 'rspec'
require File.join(File.dirname(__FILE__), 'd2.rb')

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

  describe '入力例' do
    let(:r) { 1 }
    let(:g) { 199 }
    let(:b) { 1 }
    it { is_expected.to eq 9900 }
  end

  describe '入力例' do
    let(:r) { 1 }
    let(:g) { 200 }
    let(:b) { 1 }
    it { is_expected.to eq 10001 }
  end

  describe '入力例' do
    let(:r) { 1 }
    let(:g) { 201 }
    let(:b) { 1 }
    it { is_expected.to eq 10102 }
  end

  describe '入力例' do
    let(:r) { 267 }
    let(:g) { 294 }
    let(:b) { 165 }
    it { is_expected.to eq 88577 }
  end

  describe '入力例' do
    let(:r) { 300 }
    let(:g) { 300 }
    let(:b) { 300 }
    it { is_expected.to eq 142500 }
  end

  describe '入力例' do
    let(:r) { 299 }
    let(:g) { 299 }
    let(:b) { 299 }
    it { is_expected.to eq 141352 }
  end

  describe '入力例' do
    let(:r) { 300 }
    let(:g) { 300 }
    let(:b) { 100 }
    it { is_expected.to eq 83750 }
  end

  describe '入力例' do
    let(:r) { 300 }
    let(:g) { 300 }
    let(:b) { 250 }
    it { is_expected.to eq 125625 }
  end
end
