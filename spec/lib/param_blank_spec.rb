require 'spec_helper'

describe Apipie::ParamBlank do

  describe '#blank?' do
    subject { Apipie::ParamBlank }

    it 'returns true for nil param' do
      expect(subject.new(nil).blank?).to be_truthy
    end

    it 'returns true for an empty string' do
      expect(subject.new('').blank?).to be_truthy
    end

    it 'returns true for am empty array' do
      expect(subject.new([]).blank?).to be_truthy
    end

    it 'returns true for am empty object' do
      expect(subject.new({}).blank?).to be_truthy
    end

    it 'returns false for an integer' do
      expect(subject.new(1).blank?).to be_falsey
    end

    it 'returns false for a string' do
      expect(subject.new('lorem').blank?).to be_falsey
    end

    it 'returns false for a boolean true' do
      expect(subject.new(true).blank?).to be_falsey
    end

    it 'returns false for a boolean false' do
      expect(subject.new(false).blank?).to be_falsey
    end

  end

end
