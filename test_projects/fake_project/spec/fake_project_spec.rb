# frozen_string_literal: true

require 'spec_helper'
require 'fake_project'

RSpec.describe 'FakeProject' do
  describe '#initialize' do
    context 'with no argument' do
      it 'should set x to 0' do
        subject = FakeProject.new
        expect(subject.x).to equal(0)
      end
    end

    context 'with a negative argument' do
      it 'should set x to the absolute value of the argument' do
        subject = FakeProject.new(-3)
        expect(subject.x).to equal(3)
      end
    end

    context 'with a numeric string argument' do
      it 'should set x to the integer value of the string' do
        subject = FakeProject.new('12')
        expect(subject.x).to equal(12)
      end
    end

    context 'with a non-numeric argument' do
      it 'should set x to 0' do
        subject = FakeProject.new('S')
        expect(subject.x).to equal(0)
      end
    end
  end

  describe '#foo' do
    context 'with an even x' do
      it 'should return x divided by 2' do
        subject = FakeProject.new(12)
        expect(subject.foo).to equal(6)
      end
    end

    context 'with an odd x' do
      it 'should return x mulitplied by 3 plus 1' do
        subject = FakeProject.new(13)
        expect(subject.foo).to equal(40)
      end
    end
  end

  describe '#bar' do
    context 'with x = 6174' do
      it 'should return 6174' do
        subject = FakeProject.new(6174)
        expect(subject.bar).to equal(6174)
      end
    end

    context 'with x = 9541' do
      it 'should return 8082' do
        subject = FakeProject.new(9541)
        expect(subject.bar).to equal(8082)
      end
    end

    context 'with x = 8888' do
      it 'should return 0' do
        subject = FakeProject.new(8888)
        expect(subject.bar).to equal(0)
      end
    end

    context 'with x = 2111' do
      it 'should reach 6174 after 5 iterations' do
        subject = FakeProject.new(2111)
        expect(subject.x).to equal(2111)
        subject = FakeProject.new(subject.bar)
        expect(subject.x).to equal(999)
        subject = FakeProject.new(subject.bar)
        expect(subject.x).to equal(8991)
        subject = FakeProject.new(subject.bar)
        expect(subject.x).to equal(8082)
        subject = FakeProject.new(subject.bar)
        expect(subject.x).to equal(8532)
        subject = FakeProject.new(subject.bar)
        expect(subject.x).to equal(6174)
      end
    end

    context 'with x = 123' do
      it 'should return 3087' do
        subject = FakeProject.new(123)
        expect(subject.bar).to equal(3087)
      end
    end

    context 'with x = 12' do
      it 'should return 2088' do
        subject = FakeProject.new(12)
        expect(subject.bar).to equal(2088)
      end
    end
  end
end