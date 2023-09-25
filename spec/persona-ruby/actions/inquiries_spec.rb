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

  describe "#inquiry_post" do
    it "issues the correct POST request to create an inquiry" do
      attributes = {"account-id": "act_123", "inquiry-template-id": "itmpl_123"}
      stub = stub_request(:post,
                          "#{@client.url}/inquiries").with(body: { data: {attributes: } })

      @client.inquiry_create(attributes)

      expect(stub).to have_been_requested
    end
  end

  describe "#inquiry_update" do
    it "issues the correct PATCH request to update an inquiry" do
      id = "0"
      attributes = {"name-first": "Yugi", "name-last": "Moto"}
      stub = stub_request(:get, 
                          "#{@client.url}/inquiries/#{id}").with(body: { data: {attributes: }})

      @client.inquiry_get(id, attributes)

      expect(stub).to have_been_requested
    end
  end
end
