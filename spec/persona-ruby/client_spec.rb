# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Persona::Client do
  subject { @client }

  before do
    @client = described_class.new(access_token: 'token')
  end

  describe '.initialize' do
    it 'returns a client object' do
      expect(@client).to be_a(described_class)
    end
  end

end