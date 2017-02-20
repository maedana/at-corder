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
    let(:g) { 200 }
    let(:b) { 2 }
    it { is_expected.to eq 10003 }
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
end
