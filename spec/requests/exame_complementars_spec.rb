require 'spec_helper'

describe "ExameComplementars" do
  describe "GET /exame_complementars" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get exame_complementars_path
      response.status.should be(200)
    end
  end
end
