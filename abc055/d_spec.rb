require 'rspec'
require File.join(File.dirname(__FILE__), 'd.rb')

# 羊がo SsS WsW
# 羊がx SsW WsS
# 狼がo SwW WwS
# 狼がx SwS WwW

describe 'ABC055 D' do
  subject { f(n, s) }

  describe '入力例' do
    let(:n) { 6 }
    let(:s) { 'ooxoox' }
    it { is_expected.to eq 'SSSWWS' }
  end

  describe '入力例' do
    let(:n) { 3 }
    let(:s) { 'oox' }
    it { is_expected.to eq(-1) }
  end

  describe '入力例' do
    let(:n) { 10 }
    let(:s) { 'oxooxoxoox' }
    it { is_expected.to eq 'SSWWSSSWWS' }
  end

  describe '入力例' do
    let(:n) { 3 }
    let(:s) { 'ooo' }
    it { is_expected.to eq 'SSS' }
  end
end
