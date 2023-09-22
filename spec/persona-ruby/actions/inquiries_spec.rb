# frozen_string_literal: true

require "spec_helper"

RSpec.describe Persona::Actions::Inquiries do
  subject { @client }

  before do
    @client = Persona::Client.new(access_token: "token")
  end

  describe "#inquiry_list" do
    it "issues the correct GET request to get a list of inquiries" do
      stub = stub_request(:get, "#{@client.url}/inquiries")

      @client.inquiry_list

      expect(stub).to have_been_requested
    end
  end

  describe "#inquiry_get" do
    it "issues the correct GET request to get a specific inquiry" do
      id = "0"
      stub = stub_request(:get, "#{@client.url}/inquiries/#{id}")

      @client.inquiry_get(id)

      expect(stub).to have_been_requested
    end
  end
end
