require 'rspec'
require File.join(File.dirname(__FILE__), 'b.rb')

describe 'B問題' do
  subject { f(c) }

  describe '入力例' do
    let(:c) do
      <<~TEXT
        . . . .
        . o o .
        . x x .
        . . . .
      TEXT
    end
    let(:expected) do
      <<~TEXT
        . . . .
        . x x .
        . o o .
        . . . .
      TEXT
    end
    it { is_expected.to eq expected }
  end

  describe '入力例' do
    let(:c) do
      <<~TEXT
        o o x x
        o o x x
        x x o o
        x x o o
      TEXT
    end
    let(:expected) do
      <<~TEXT
        o o x x
        o o x x
        x x o o
        x x o o
      TEXT
    end
    it { is_expected.to eq expected }
  end

  describe '入力例' do
    let(:c) do
      <<~TEXT
        o . . .
        . . . .
        . . . .
        . . . .
      TEXT
    end
    let(:expected) do
      <<~TEXT
        . . . .
        . . . .
        . . . .
        . . . o
      TEXT
    end
    it { is_expected.to eq expected }
  end
end
