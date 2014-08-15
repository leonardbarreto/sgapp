require 'spec_helper'

describe "Gds" do
  describe "GET /gds" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get gds_path
      response.status.should be(200)
    end
  end
end
