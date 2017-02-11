require 'rspec'
require './b.rb'

describe 'メイン関数のテスト' do
  subject { f(m) }

  describe '入力例1' do
    let(:m) { 15_000 }
    it { is_expected.to eq '65' }
  end

  describe '入力例2' do
    let(:m) { 75_000 }
    it { is_expected.to eq '89' }
  end

  describe '入力例3' do
    let(:m) { 200 }
    it { is_expected.to eq '02' }
  end

  describe '入力例4' do
    let(:m) { 99 }
    it { is_expected.to eq '00' }
  end

  describe '入力例5' do
    let(:m) { 100 }
    it { is_expected.to eq '01' }
  end

  describe '入力例6' do
    let(:m) { 1000 }
    it { is_expected.to eq '10' }
  end

  describe '入力例7' do
    let(:m) { 5000 }
    it { is_expected.to eq '50' }
  end

  describe '入力例8' do
    let(:m) { 4900 }
    it { is_expected.to eq '49' }
  end

  describe '入力例9' do
    let(:m) { 70000 }
    it { is_expected.to eq '88' }
  end

  describe '入力例10' do
    let(:m) { 70001 }
    it { is_expected.to eq '89' }
  end
end
