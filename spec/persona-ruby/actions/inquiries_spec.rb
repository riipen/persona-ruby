# frozen_string_literal: true

require "spec_helper"

RSpec.describe Persona::Actions::Inquiries do
  subject { @client }

  before do
    @client = Persona::Client.new(access_token: "token")
  end

  describe "#inquiry_list" do
    it "issues the correct GET request" do
      stub = stub_request(:get, @client.url.to_s)

      @client.inquiry_list

      expect(stub).to have_been_requested
    end
  end
end
