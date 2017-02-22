require 'rspec'
require File.join(File.dirname(__FILE__), 'd.rb')

describe 'D問題' do
  subject { f(n, d, q, p) }

  describe '入力例' do
    let(:n) { 3 }
    let(:d) do
      <<~TEXT
      3 2 1
      2 2 1
      1 1 1
      TEXT
    end
    let(:q) { 3 }
    let(:p) do
      <<~TEXT
      1
      4
      9
      TEXT
    end
    let(:expected) do
      <<~TEXT
      3
      9
      14
      TEXT
    end
    it { is_expected.to eq expected.chomp }
  end

  describe '入力例' do
    let(:n) { 3 }
    let(:d) do
      <<~TEXT
      1 1 1
      1 1 1
      9 9 9
      TEXT
    end
    let(:q) { 1 }
    let(:p) do
      <<~TEXT
      4
      TEXT
    end
    let(:expected) do
      <<~TEXT
      27
      TEXT
    end
    it { is_expected.to eq expected.chomp }
  end
end
