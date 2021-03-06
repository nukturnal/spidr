require 'spidr/page'

require 'spec_helper'

shared_examples_for "Page" do
  it "should have a status code" do
    @page.code.should be_integer
  end

  it "should have a body" do
    @page.body.should_not be_empty
  end

  it "should provide transparent access to the response headers" do
    @page.content_type.should == @page.response['Content-Type']
  end

  it "should allow content-types" do
    @page.content_types.should_not be_empty
  end
end
