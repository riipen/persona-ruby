# frozen_string_literal: true

require "spec_helper"

RSpec.describe Persona::Connection do
  subject { @connection }

  before do
    @connection = described_class.new("https://foo.com/bar", "token")
  end

  # Class Methods
  describe ".initialize" do
    it "returns a connection object" do
      expect(@connection).to be_a(described_class)
    end
  end

  # Instance Methods
  describe "#delete" do
    it "issues a delete request" do
      stub = stub_request(:delete, "https://foo.com/bar")

      @connection.delete("/bar")

      expect(stub).to have_been_requested
    end
  end

  describe "#get" do
    it "issues a get request" do
      stub = stub_request(:get, "https://foo.com/bar")

      @connection.get("/bar")

      expect(stub).to have_been_requested
    end
  end

  describe "#post" do
    it "issues a post request" do
      stub = stub_request(:post, "https://foo.com/bar")

      @connection.post("/bar")

      expect(stub).to have_been_requested
    end
  end
end
