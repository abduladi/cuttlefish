require "spec_helper"

describe Filters::Delivery do
  let(:delivery) { double(from: "foo@foo.com", to: ["bar@foo.com"], data: "my original data") }
  let(:filter) { Filters::Delivery.new }

  describe "#data" do
    it { filter.data(delivery).should == "my original data"}
  end
end
