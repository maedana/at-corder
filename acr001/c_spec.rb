require 'rspec'
require File.join(File.dirname(__FILE__), 'c.rb')

describe 'Regular Contest 001 C' do
  subject { f(c) }

  describe '入力例' do
    let(:c) do
      <<~'TEXT'
      ........
      ........
      .......Q
      ........
      ..Q.....
      ........
      .Q......
      ........
      TEXT
    end
    let(:result) do
      <<~'TEXT'
      Q.......
      ....Q...
      .......Q
      .....Q..
      ..Q.....
      ......Q.
      .Q......
      ...Q....
      TEXT
    end
    it { is_expected.to eq result }
  end

  describe '入力例' do
    let(:c) do
      <<~'TEXT'
        .....Q..
        .Q......
        ........
        ........
        ........
        Q.......
        ........
        ........
      TEXT
    end
    it { is_expected.to eq 'No Answer' }
  end
end
